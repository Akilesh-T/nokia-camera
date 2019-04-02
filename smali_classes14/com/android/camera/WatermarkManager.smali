.class public Lcom/android/camera/WatermarkManager;
.super Ljava/lang/Object;
.source "WatermarkManager.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;
.implements Lcom/android/camera/watermark/TencentWebService$POIResponse;
.implements Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;,
        Lcom/android/camera/WatermarkManager$REQUEST_STATE;
    }
.end annotation


# static fields
.field private static final DO_UPDATE_WEATHER_INFO_FINISH:I = 0x0

.field public static final RESULT_AUTO_SEARCH_CURRENT_CITY_FAIL:I = 0xa

.field public static final RESULT_CONNECTION_FAIL:I = -0x1

.field public static final RESULT_GPS_CLOSE_FAIL:I = 0x0

.field public static final RESULT_PERMISSION_FAIL:I = 0x28

.field public static final RESULT_READ_DATABASE_FAIL:I = -0x2

.field public static final RESULT_REFRESH_ALL_CITY_FAIL:I = 0x1e

.field public static final RESULT_REFRESH_CURRENT_CITY_FAIL:I = 0x14

.field private static final SHOW_UPDATE_WEATHER_INFO_FAIL_MSG:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private isWeatherContentChangedObserverRegistered:Z

.field private isWeatherServiceUpdatedRegistered:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mCameraRootView:Landroid/view/ViewGroup;

.field private mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

.field private mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

.field private mHandler:Landroid/os/Handler;

.field private mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

.field private mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;

.field private mOrientation:I

.field private mParamsFreeText:Ljava/lang/String;

.field private mParamsStyleOption:I

.field private mPausing:Z

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mWatermarkContainer:Landroid/widget/FrameLayout;

.field private mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

.field private mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

.field private mWeatherContentChangedObserver:Landroid/database/ContentObserver;

.field private mWeatherServiceStatus:I

.field private mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.Manager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager;->isWeatherContentChangedObserverRegistered:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager;->isWeatherServiceUpdatedRegistered:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    .line 85
    new-instance v0, Lcom/android/camera/WatermarkManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/WatermarkManager$1;-><init>(Lcom/android/camera/WatermarkManager;)V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 142
    new-instance v0, Lcom/android/camera/WatermarkManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/WatermarkManager$2;-><init>(Lcom/android/camera/WatermarkManager;)V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    .line 479
    new-instance v0, Lcom/android/camera/WatermarkManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/camera/WatermarkManager$5;-><init>(Lcom/android/camera/WatermarkManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWeatherContentChangedObserver:Landroid/database/ContentObserver;

    .line 631
    new-instance v0, Lcom/android/camera/WatermarkManager$6;

    invoke-direct {v0, p0}, Lcom/android/camera/WatermarkManager$6;-><init>(Lcom/android/camera/WatermarkManager;)V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mHandler:Landroid/os/Handler;

    .line 229
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 230
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 231
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 232
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/LocationInfoData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/WatermarkManager;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mPreviewArea:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/FreeTextInfoData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->startDoUpdateWeatherInfoThread()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/WatermarkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/WatermarkManager;->registerWeatherServiceUpdated(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/WatermarkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/WatermarkManager;->registerWeatherContentChangedObserver(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/camera/WatermarkManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/WatermarkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/WatermarkManager;Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;)Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->getWeatherInfo()Lcom/android/camera/watermark/WatermarkInfoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/WatermarkManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/WatermarkManager;->startWebRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/WatermarkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->sendUpdateWeatherInfoService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/WatermarkManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/WatermarkManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mCameraRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CaptureLayoutHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/WatermarkManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->showUpdateWeatherInfoFailMsgAndReset()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/WatermarkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->inflateWatermarkViewIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/WatermarkManager;)Lcom/android/camera/watermark/WatermarkInfoData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/WatermarkManager;Lcom/android/camera/watermark/WatermarkInfoData;)Lcom/android/camera/watermark/WatermarkInfoData;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WatermarkManager;
    .param p1, "x1"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    return-object p1
.end method

.method private enableEditMode(ZIII)Z
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "id"    # I
    .param p3, "posX"    # I
    .param p4, "posY"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-nez v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    const v5, 0x7f0f0228

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "controller":Landroid/view/View;
    if-eqz p1, :cond_3

    .line 360
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    if-nez v4, :cond_2

    move v1, v2

    .line 361
    .local v1, "isOverlay":Z
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/android/camera/app/CameraAppUI;->changeWatermarkModeOptions(ZZ)V

    move v2, v3

    .line 363
    goto :goto_0

    .line 360
    .end local v1    # "isOverlay":Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-virtual {v4}, Lcom/android/camera/CaptureLayoutHelper;->shouldOverlayBottomBar()Z

    move-result v1

    goto :goto_1

    .line 365
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/camera/app/CameraAppUI;->changeWatermarkModeOptions(ZZ)V

    .line 367
    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_watermark_params_pos_x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_watermark_params_pos_y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getWeatherInfo()Lcom/android/camera/watermark/WatermarkInfoData;
    .locals 13

    .prologue
    .line 554
    sget-object v11, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getWeatherInfo - (mContentResolver == null) = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v10, :cond_2

    const/4 v8, 0x0

    .line 605
    :cond_0
    :goto_1
    return-object v8

    .line 554
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 557
    :cond_2
    const/4 v8, 0x0

    .line 558
    .local v8, "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    const/4 v4, 0x0

    .line 560
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "cityId=\'1\'"

    invoke-static {v10, v11, v12}, Lcom/android/camera/ui/watermark/WeatherUtil;->getConditionCursor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 563
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 564
    const/16 v10, 0xf

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "conditionStr":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getWeatherInfo - conditionStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_3

    .line 568
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 569
    invoke-static {}, Lcom/android/camera/ui/watermark/HuaMappingTable;->getInstance()Lcom/android/camera/ui/watermark/HuaMappingTable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/WatermarkManager;->mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;

    .line 570
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "initial HuaMappingTable"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :cond_3
    :goto_2
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;

    if-eqz v10, :cond_5

    .line 577
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;

    iget-object v11, p0, Lcom/android/camera/WatermarkManager;->mMappingTable:Lcom/android/camera/ui/watermark/MappingTable;

    invoke-interface {v11, v1}, Lcom/android/camera/ui/watermark/MappingTable;->getConditionMapIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/camera/ui/watermark/MappingTable;->getWeatherIconId(I)I

    move-result v6

    .line 578
    .local v6, "iconId":I
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v11, 0xe

    .line 579
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 578
    invoke-static {v10, v11}, Lcom/android/camera/ui/watermark/WeatherUtil;->getCurrentDegreeNum(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "currentTemperature":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/android/camera/ui/watermark/WeatherUtil;->getCurrentDegreeSymbol(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "currentTemperatureSymbol":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "cityName":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "location":Ljava/lang/String;
    new-instance v9, Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-direct {v9}, Lcom/android/camera/watermark/WatermarkInfoData;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    .end local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .local v9, "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "Current city"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 585
    iput-object v0, v9, Lcom/android/camera/watermark/WatermarkInfoData;->mCityName:Ljava/lang/String;

    .line 586
    :cond_4
    iput-object v2, v9, Lcom/android/camera/watermark/WatermarkInfoData;->mTemperature:Ljava/lang/String;

    .line 587
    iput-object v3, v9, Lcom/android/camera/watermark/WatermarkInfoData;->mTemperatureSymbol:Ljava/lang/String;

    .line 588
    iput v6, v9, Lcom/android/camera/watermark/WatermarkInfoData;->mWeatherIconId:I

    .line 589
    iput-object v7, v9, Lcom/android/camera/watermark/WatermarkInfoData;->mLocation:Ljava/lang/String;

    .line 590
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "weatherInfoData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/camera/watermark/WatermarkInfoData;->dump()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v9

    .line 601
    .end local v0    # "cityName":Ljava/lang/String;
    .end local v1    # "conditionStr":Ljava/lang/String;
    .end local v2    # "currentTemperature":Ljava/lang/String;
    .end local v3    # "currentTemperatureSymbol":Ljava/lang/String;
    .end local v6    # "iconId":I
    .end local v7    # "location":Ljava/lang/String;
    .end local v9    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .restart local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    :goto_3
    if-eqz v4, :cond_0

    .line 602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 571
    .restart local v1    # "conditionStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 572
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "initial HuaMappingTable fail"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 597
    .end local v1    # "conditionStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    .line 598
    .local v5, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getWeatherInfo - ERROR => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 601
    if-eqz v4, :cond_0

    .line 602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 592
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v1    # "conditionStr":Ljava/lang/String;
    :cond_5
    :try_start_6
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "getWeatherInfo fail => (mMappingTable == null)"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 601
    .end local v1    # "conditionStr":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v4, :cond_6

    .line 602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v10

    .line 595
    :cond_7
    :try_start_7
    sget-object v10, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "getWeatherInfo fail => (mCursor != null && mCursor.moveToFirst()) == false"

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 601
    .end local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .restart local v0    # "cityName":Ljava/lang/String;
    .restart local v1    # "conditionStr":Ljava/lang/String;
    .restart local v2    # "currentTemperature":Ljava/lang/String;
    .restart local v3    # "currentTemperatureSymbol":Ljava/lang/String;
    .restart local v6    # "iconId":I
    .restart local v7    # "location":Ljava/lang/String;
    .restart local v9    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .restart local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    goto :goto_5

    .line 597
    .end local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .restart local v9    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    :catch_2
    move-exception v5

    move-object v8, v9

    .end local v9    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    .restart local v8    # "watermarkInfoData":Lcom/android/camera/watermark/WatermarkInfoData;
    goto :goto_4
.end method

.method private inflateWatermarkViewIfNeeded()V
    .locals 5

    .prologue
    .line 376
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_watermark_show_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 377
    .local v0, "isShowed":Z
    if-eqz v0, :cond_1

    .line 378
    sget-object v2, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "WatermarkManager should be showed."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-nez v2, :cond_0

    .line 380
    sget-object v2, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "WatermarkManager is inflated."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 382
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04009e

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 383
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0f0225

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    iput-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    .line 384
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setPageChangedListener(Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout$OnPageSeletectedListener;)V

    .line 385
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->loadParams()V

    .line 386
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    iget v3, p0, Lcom/android/camera/WatermarkManager;->mParamsStyleOption:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setCurrentItem(I)V

    .line 387
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 388
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 389
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    iget v3, p0, Lcom/android/camera/WatermarkManager;->mOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setOrientation(IZ)V

    .line 390
    invoke-direct {p0, p0}, Lcom/android/camera/WatermarkManager;->setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V

    .line 395
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/WatermarkManager;->removeWatermark()V

    goto :goto_0
.end method

.method private loadParams()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_watermark_params_style_option_key"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/WatermarkManager;->mParamsStyleOption:I

    .line 166
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_watermark_params_free_text_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mParamsFreeText:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-direct {v0}, Lcom/android/camera/watermark/FreeTextInfoData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mParamsFreeText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/watermark/FreeTextInfoData;->mFreeText:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private registerWeatherContentChangedObserver(Z)V
    .locals 5
    .param p1, "observered"    # Z

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    if-eqz p1, :cond_2

    .line 461
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherContentChangedObserverRegistered:Z

    if-nez v1, :cond_0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/ui/watermark/Weather$Conditions;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWeatherContentChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 465
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherContentChangedObserverRegistered:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherContentChangedObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWeatherContentChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 473
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->stopDoUpdateWeatherInfoThread()V

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherContentChangedObserverRegistered:Z

    goto :goto_0
.end method

.method private registerWeatherServiceUpdated(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    if-eqz p1, :cond_2

    .line 443
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherServiceUpdatedRegistered:Z

    if-nez v1, :cond_0

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.fihtdc.action.UPDATE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherServiceUpdatedRegistered:Z

    goto :goto_0

    .line 450
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherServiceUpdatedRegistered:Z

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/WatermarkManager;->isWeatherServiceUpdatedRegistered:Z

    goto :goto_0
.end method

.method private saveParams()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_watermark_params_style_option_key"

    iget v3, p0, Lcom/android/camera/WatermarkManager;->mParamsStyleOption:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_watermark_params_free_text_key"

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mParamsFreeText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendUpdateWeatherInfoService()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 609
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WeatherUtil;->vaildateDataLink(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    .line 625
    :goto_0
    return v2

    .line 614
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.fihtdc.action.AUTO_SEARCH_CURRENT_CITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.evenwell.weatherservice"

    const-string v5, "com.evenwell.weatherservice.service.UpdateService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v4, "Auto"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 618
    sget-object v4, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendUpdateWeatherInfoService intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 619
    goto :goto_0

    .line 620
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendUpdateWeatherInfoService ERROR => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 624
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    goto :goto_0
.end method

.method private setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V

    .line 279
    :cond_0
    return-void
.end method

.method private showUpdateWeatherInfoFailMsgAndReset()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 657
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    if-eqz v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    sget-object v1, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUpdateWeatherInfoFailMsgAndReset - mWeatherServiceStatus => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    const/4 v0, -0x1

    .line 660
    .local v0, "errorStringId":I
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    if-ne v1, v4, :cond_3

    .line 661
    const v0, 0x7f080096

    .line 674
    :cond_2
    :goto_1
    if-eq v0, v4, :cond_0

    .line 675
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/WatermarkManager;->mOrientation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 662
    :cond_3
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    if-nez v1, :cond_4

    .line 663
    const v0, 0x7f08009a

    goto :goto_1

    .line 664
    :cond_4
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 665
    const v0, 0x7f080099

    goto :goto_1

    .line 666
    :cond_5
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_7

    .line 668
    :cond_6
    const v0, 0x7f08009b

    goto :goto_1

    .line 669
    :cond_7
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8

    .line 670
    const v0, 0x7f080098

    goto :goto_1

    .line 671
    :cond_8
    iget v1, p0, Lcom/android/camera/WatermarkManager;->mWeatherServiceStatus:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 672
    const v0, 0x7f080097

    goto :goto_1
.end method

.method private startDoUpdateWeatherInfoThread()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;-><init>(Lcom/android/camera/WatermarkManager;Z)V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .line 542
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    invoke-virtual {v0}, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->start()V

    .line 544
    :cond_0
    return-void
.end method

.method private declared-synchronized startWebRequest(Ljava/lang/String;)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Watermark;->ENABLE_TENCENT_POI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    sget-object v6, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    if-nez v1, :cond_0

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "locations":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 197
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 198
    .local v2, "latitude":D
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 199
    .local v4, "longitude":D
    sget-object v1, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WebRequest] startWebRequest("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/android/camera/watermark/TencentWebService;->getInstance()Lcom/android/camera/watermark/TencentWebService;

    move-result-object v1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/watermark/TencentWebService;->requestPOI(DDLcom/android/camera/watermark/TencentWebService$POIResponse;)V

    .line 201
    sget-object v1, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSING:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v1, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "locations":[Ljava/lang/String;
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopDoUpdateWeatherInfoThread()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    invoke-virtual {v0}, Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;->finish()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mDoUpdateWeatherInfoThread:Lcom/android/camera/WatermarkManager$DoUpdateWeatherInfoThread;

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method public getData(II)Lcom/android/camera/watermark/WatermarkViewData;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 411
    .local v2, "startTime":J
    sget-object v6, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getData-(mWatermarkRoot != null) = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", and visible = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    .line 412
    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {v6, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-nez v4, :cond_3

    move-object v1, v5

    .line 428
    :cond_0
    :goto_2
    return-object v1

    .line 411
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 412
    :cond_2
    const-string v4, "null"

    goto :goto_1

    .line 415
    :cond_3
    const/4 v1, 0x0

    .line 416
    .local v1, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    iget-object v4, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->getCurreWatermarkFragment()Lcom/android/camera/ui/watermark/WatermarkFragment;

    move-result-object v0

    .line 417
    .local v0, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    if-eqz v0, :cond_5

    .line 418
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->getWatermarkViewData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v1

    .line 419
    sget-object v4, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWatermarkViewData-watermarkViewData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/camera/watermark/WatermarkViewData;->dump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    :goto_3
    sget-object v4, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 427
    :cond_4
    sget-object v4, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "getWatermarkViewData ERROR => (watermarkViewData.mBitmap == null)"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v5

    .line 428
    goto :goto_2

    .line 421
    :cond_5
    sget-object v4, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "getWatermarkViewData ERROR => (fragment == null)"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public load(Landroid/view/ViewGroup;Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mCameraRootView:Landroid/view/ViewGroup;

    .line 237
    iput-object p2, p0, Lcom/android/camera/WatermarkManager;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 238
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/camera/WatermarkManager;->mParamsStyleOption:I

    .line 161
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->saveParams()V

    .line 162
    return-void
.end method

.method public onEditMode(ZIII)Z
    .locals 3
    .param p1, "editable"    # Z
    .param p2, "id"    # I
    .param p3, "posX"    # I
    .param p4, "posY"    # I

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeOptionsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v1, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Mode Options is not visible, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    :goto_0
    return v0

    .line 289
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/camera/WatermarkManager;->enableEditMode(ZIII)Z

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/camera/WatermarkManager;->enableEditMode(ZIII)Z

    move-result v0

    goto :goto_0
.end method

.method public onResult(ILjava/util/List;)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "lstPOI":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 206
    sget-object v2, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WebRequest] onResult("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), mPausing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mLocationInfoData is null? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    if-eqz v0, :cond_2

    .line 209
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    .line 226
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0

    .line 213
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 215
    :pswitch_0
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->PROCESSED:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    .line 216
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    if-nez v0, :cond_0

    .line 217
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/WatermarkManager;->setLocationInfoData(Ljava/lang/String;Z)V

    goto :goto_1

    .line 220
    :pswitch_1
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    goto :goto_1

    .line 223
    :pswitch_2
    sget-object v0, Lcom/android/camera/WatermarkManager$REQUEST_STATE;->INIT:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWebRequestState:Lcom/android/camera/WatermarkManager$REQUEST_STATE;

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerWatermark()V
    .locals 5

    .prologue
    .line 296
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    .line 298
    new-instance v1, Lcom/android/camera/WatermarkManager$3;

    invoke-direct {v1, p0}, Lcom/android/camera/WatermarkManager$3;-><init>(Lcom/android/camera/WatermarkManager;)V

    .line 314
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 315
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v2}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f04009f

    iget-object v3, p0, Lcom/android/camera/WatermarkManager;->mCameraRootView:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/camera/WatermarkManager$4;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/WatermarkManager$4;-><init>(Lcom/android/camera/WatermarkManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 329
    .end local v0    # "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removeWatermark()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    sget-object v0, Lcom/android/camera/WatermarkManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWatermark with mWatermarkRoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    .line 403
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 405
    invoke-direct {p0, v3}, Lcom/android/camera/WatermarkManager;->registerWeatherServiceUpdated(Z)V

    .line 406
    invoke-direct {p0, v3}, Lcom/android/camera/WatermarkManager;->registerWeatherContentChangedObserver(Z)V

    goto :goto_0
.end method

.method public setFreeTextInfoData(Ljava/lang/String;)V
    .locals 2
    .param p1, "freeText"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-direct {v0}, Lcom/android/camera/watermark/FreeTextInfoData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    iput-object p1, v0, Lcom/android/camera/watermark/FreeTextInfoData;->mFreeText:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 271
    :cond_1
    iput-object p1, p0, Lcom/android/camera/WatermarkManager;->mParamsFreeText:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lcom/android/camera/WatermarkManager;->saveParams()V

    .line 273
    return-void
.end method

.method public setLocationInfoData(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "isEdit"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/android/camera/watermark/LocationInfoData;

    invoke-direct {v0}, Lcom/android/camera/watermark/LocationInfoData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    .line 248
    :cond_0
    if-eqz p2, :cond_3

    .line 249
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    iput-object p1, v0, Lcom/android/camera/watermark/LocationInfoData;->mEditLocation:Ljava/lang/String;

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    iget-object v0, v0, Lcom/android/camera/watermark/LocationInfoData;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    iget-object v0, v0, Lcom/android/camera/watermark/LocationInfoData;->mLocation:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    iget-object v1, v1, Lcom/android/camera/watermark/LocationInfoData;->mEditLocation:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/watermark/LocationInfoData;->mEditLocation:Ljava/lang/String;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    iget-object v1, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 260
    :cond_2
    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    iput-object p1, v0, Lcom/android/camera/watermark/LocationInfoData;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 434
    iput p1, p0, Lcom/android/camera/WatermarkManager;->mOrientation:I

    .line 435
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setOrientation(IZ)V

    .line 437
    :cond_0
    return-void
.end method

.method public setWatermarkVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setVisibility(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public unregisterWatermark()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WatermarkManager;->mPausing:Z

    .line 339
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setVisibility(I)V

    .line 344
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/WatermarkManager;->registerWeatherServiceUpdated(Z)V

    .line 345
    invoke-direct {p0, v2}, Lcom/android/camera/WatermarkManager;->registerWeatherContentChangedObserver(Z)V

    goto :goto_0
.end method

.method public updateCameraFacing(Z)V
    .locals 1
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/camera/WatermarkManager;->mWatermarkRoot:Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkPagerRotateLayout;->setCameraFacing(Z)V

    .line 352
    :cond_0
    return-void
.end method
