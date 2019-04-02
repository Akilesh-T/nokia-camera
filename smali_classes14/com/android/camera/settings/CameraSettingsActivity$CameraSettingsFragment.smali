.class public Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/camera/settings/LocationSwitchPreference$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSettingsFragment"
.end annotation


# static fields
.field public static final KEY_SCENE_DETECTION:Ljava/lang/String; = "pref_scene_detection_key"

.field public static final PREF_CATEGORY_ABOUT:Ljava/lang/String; = "pref_category_about"

.field public static final PREF_CATEGORY_ADVANCED:Ljava/lang/String; = "pref_category_advanced"

.field public static final PREF_CATEGORY_LIVE_BROADCAST:Ljava/lang/String; = "pref_category_live_broadcast"

.field public static final PREF_CATEGORY_PHOTO_RESOLUTION:Ljava/lang/String; = "pref_category_photo_resolution"

.field public static final PREF_CATEGORY_RESOLUTION:Ljava/lang/String; = "pref_category_resolution"

.field public static final PREF_CATEGORY_VIDEO_RESOLUTION:Ljava/lang/String; = "pref_category_video_resolution"

.field public static final PREF_HDR_OPTION:Ljava/lang/String; = "pref_camera_hdr_key"

.field public static final PREF_LAUNCH_HELP:Ljava/lang/String; = "pref_launch_help"

.field public static final PREF_WATERMARK_SHOW:Ljava/lang/String; = "pref_watermark_show_key"

.field public static final PREF_ZSL_OPTION:Ljava/lang/String; = "pref_camera_zsl_key"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sMegaPixelFormat:Ljava/text/DecimalFormat;

.field private static sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;


# instance fields
.field private final PERMISSION_REQUEST:I

.field private final PERMISSION_REQUEST_AGAIN:I

.field private final PERMISSION_REQUEST_CODE:I

.field private mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

.field private mCamcorderProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetSubPrefAsRoot:Z

.field private mHideAdvancedScreen:Z

.field private mHideZSLOption:Z

.field private mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field private mIsSecureCamera:Z

.field private mPictureResolutionData:Ljava/lang/String;

.field private mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

.field private mPrefKey:Ljava/lang/String;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryVisible:Z

.field private mVideoResolutionData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SettingsFragment"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 345
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 346
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 348
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    .line 354
    iput-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mGetSubPrefAsRoot:Z

    .line 359
    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->PERMISSION_REQUEST:I

    .line 361
    iput v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->PERMISSION_REQUEST_AGAIN:I

    .line 362
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->PERMISSION_REQUEST_CODE:I

    .line 363
    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    .line 364
    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/preference/ListPreference;

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEnableStorage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    return-void
.end method

.method private dismissSizeDialogs()V
    .locals 8

    .prologue
    .line 947
    const-string v7, "pref_camera_picturesize_back_key"

    invoke-virtual {p0, v7}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 948
    .local v0, "backPicturePref":Landroid/preference/ListPreference;
    const-string v7, "pref_camera_picturesize_front_key"

    invoke-virtual {p0, v7}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 949
    .local v2, "frontPicturePref":Landroid/preference/ListPreference;
    const-string v7, "pref_video_quality_back_key"

    invoke-virtual {p0, v7}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 950
    .local v1, "backVideoPref":Landroid/preference/ListPreference;
    const-string v7, "pref_video_quality_front_key"

    invoke-virtual {p0, v7}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 952
    .local v3, "frontVideoPref":Landroid/preference/ListPreference;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v5, "listPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/ListPreference;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 959
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 960
    .local v6, "preference":Landroid/preference/ListPreference;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 961
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 958
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 963
    .end local v6    # "preference":Landroid/preference/ListPreference;
    :cond_1
    return-void
.end method

.method private fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 624
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 625
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 626
    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V

    .line 628
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummary(Landroid/preference/Preference;)V

    .line 629
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntries(Landroid/preference/Preference;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private findByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 4
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    .end local p1    # "parent":Landroid/preference/PreferenceScreen;
    :goto_0
    return-object p1

    .line 584
    .restart local p1    # "parent":Landroid/preference/PreferenceScreen;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 585
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 586
    .local v0, "child":Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 587
    check-cast v0, Landroid/preference/PreferenceScreen;

    .end local v0    # "child":Landroid/preference/Preference;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 588
    .local v2, "match":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    move-object p1, v2

    .line 589
    goto :goto_0

    .line 584
    .end local v2    # "match":Landroid/preference/PreferenceScreen;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getSettingBrightnessControlValue()F
    .locals 4

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    if-nez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 533
    :goto_0
    return v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 532
    .local v0, "ret":F
    sget-object v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSettingBrightnessControlValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSizeSummaryString(Lcom/android/camera/util/Size;)Ljava/lang/String;
    .locals 19
    .param p1, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 913
    invoke-static/range {p1 .. p1}, Lcom/android/camera/settings/ResolutionUtil;->getApproximateSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 914
    .local v2, "approximateSize":Lcom/android/camera/util/Size;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->width()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/util/Size;->height()I

    move-result v15

    mul-int/2addr v14, v15

    int-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v10, v14, v16

    .line 915
    .local v10, "sizeInMega":D
    move-wide v12, v10

    .line 918
    .local v12, "sizeInMegaForDataCollect":D
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 919
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 920
    :cond_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v14

    if-gez v14, :cond_3

    .line 921
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v10

    double-to-int v14, v14

    mul-int/lit8 v14, v14, 0xa

    int-to-double v10, v14

    .line 926
    :cond_1
    :goto_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v10, v14

    if-ltz v14, :cond_4

    sget-object v5, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 927
    .local v5, "fomator":Ljava/text/DecimalFormat;
    :goto_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v12, v14

    if-ltz v14, :cond_5

    sget-object v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sRoundedMegaPixelFormat:Ljava/text/DecimalFormat;

    .line 928
    .local v6, "fomator2":Ljava/text/DecimalFormat;
    :goto_2
    invoke-virtual {v5, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 929
    .local v7, "megaPixels":Ljava/lang/String;
    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "collectMegaPixels":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioNumerator(Lcom/android/camera/util/Size;)I

    move-result v8

    .line 931
    .local v8, "numerator":I
    invoke-static {v2}, Lcom/android/camera/settings/ResolutionUtil;->aspectRatioDenominator(Lcom/android/camera/util/Size;)I

    move-result v4

    .line 932
    .local v4, "denominator":I
    const/4 v14, 0x1

    if-ne v4, v14, :cond_2

    .line 933
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    .line 934
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    .line 936
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08025c

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 938
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v7, v16, v17

    .line 937
    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 940
    .local v9, "result":Ljava/lang/String;
    return-object v9

    .line 923
    .end local v3    # "collectMegaPixels":Ljava/lang/String;
    .end local v4    # "denominator":I
    .end local v5    # "fomator":Ljava/text/DecimalFormat;
    .end local v6    # "fomator2":Ljava/text/DecimalFormat;
    .end local v7    # "megaPixels":Ljava/lang/String;
    .end local v8    # "numerator":I
    .end local v9    # "result":Ljava/lang/String;
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    mul-int/lit8 v14, v14, 0x64

    int-to-double v10, v14

    goto :goto_0

    .line 926
    :cond_4
    sget-object v5, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sMegaPixelFormat:Ljava/text/DecimalFormat;

    goto :goto_1

    .line 927
    .restart local v5    # "fomator":Ljava/text/DecimalFormat;
    :cond_5
    sget-object v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->sMegaPixelFormat:Ljava/text/DecimalFormat;

    goto :goto_2
.end method

.method private initAboutOption(Landroid/preference/PreferenceGroup;)V
    .locals 11
    .param p1, "settings"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/settings/SettingsUtil;->isSupportAppRate(Landroid/content/Context;)Z

    move-result v6

    .line 1057
    .local v6, "isAppRate":Z
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/settings/SettingsUtil;->isSupportAppFeedback(Landroid/content/Context;)Z

    move-result v5

    .line 1058
    .local v5, "isAppFeedback":Z
    if-nez v6, :cond_0

    if-eqz v5, :cond_6

    .line 1059
    :cond_0
    const-string v8, "pref_category_about"

    invoke-virtual {p0, v8}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1060
    .local v0, "about":Landroid/preference/PreferenceGroup;
    const-string v8, "pref_about_app_version"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1061
    .local v3, "appVersion":Landroid/preference/Preference;
    const/4 v7, 0x0

    .line 1063
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1067
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    .line 1068
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1069
    :cond_1
    const-string v8, "pref_about_app_rate"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1070
    .local v2, "appRate":Landroid/preference/Preference;
    if-nez v6, :cond_4

    if-eqz v0, :cond_4

    .line 1071
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1089
    :cond_2
    :goto_1
    const-string v8, "pref_about_app_feedback"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1090
    .local v1, "appFeedback":Landroid/preference/Preference;
    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    .line 1091
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1116
    .end local v0    # "about":Landroid/preference/PreferenceGroup;
    .end local v1    # "appFeedback":Landroid/preference/Preference;
    .end local v2    # "appRate":Landroid/preference/Preference;
    .end local v3    # "appVersion":Landroid/preference/Preference;
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    return-void

    .line 1064
    .restart local v0    # "about":Landroid/preference/PreferenceGroup;
    .restart local v3    # "appVersion":Landroid/preference/Preference;
    .restart local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 1065
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initAboutOption() PackageInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "appRate":Landroid/preference/Preference;
    :cond_4
    if-eqz v2, :cond_2

    .line 1073
    new-instance v8, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;

    invoke-direct {v8, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$3;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 1092
    .restart local v1    # "appFeedback":Landroid/preference/Preference;
    :cond_5
    if-eqz v1, :cond_3

    .line 1093
    new-instance v8, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$4;

    invoke-direct {v8, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$4;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 1114
    .end local v0    # "about":Landroid/preference/PreferenceGroup;
    .end local v1    # "appFeedback":Landroid/preference/Preference;
    .end local v2    # "appRate":Landroid/preference/Preference;
    .end local v3    # "appVersion":Landroid/preference/Preference;
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const-string v8, "pref_category_about"

    invoke-virtual {p0, v8}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private initLiveBroadcastOption(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "settings"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1122
    const-string v6, "pref_category_live_broadcast"

    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1123
    .local v1, "liveBroadcast":Landroid/preference/PreferenceGroup;
    if-nez v1, :cond_1

    .line 1124
    sget-object v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "PREF_CATEGORY_LIVE_BROADCAST is already removed. Skip it!"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v2

    .line 1129
    .local v2, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-nez v2, :cond_2

    .line 1130
    sget-object v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "The LiveBroadcastManager is not created. Skip it!"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1135
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1136
    sget-object v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "The LiveBroadcastManager is disabled. Skip it!"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_3
    new-instance v3, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;

    invoke-direct {v3, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    .line 1150
    .local v3, "loginCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
    const-string v6, "pref_live_broadcast_account_weibo"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1151
    .local v4, "weibo":Landroid/preference/Preference;
    if-eqz v4, :cond_4

    .line 1152
    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isWWVersion()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1153
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1173
    :cond_4
    :goto_1
    const-string v6, "pref_live_broadcast_account_youtube"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 1174
    .local v5, "youtube":Landroid/preference/Preference;
    if-eqz v5, :cond_5

    .line 1175
    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isCNVersion()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1176
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1196
    :cond_5
    :goto_2
    const-string v6, "pref_live_broadcast_account_facebook"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1197
    .local v0, "facebook":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isCNVersion()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1199
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1155
    .end local v0    # "facebook":Landroid/preference/Preference;
    .end local v5    # "youtube":Landroid/preference/Preference;
    :cond_6
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1156
    new-instance v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 1178
    .restart local v5    # "youtube":Landroid/preference/Preference;
    :cond_7
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1179
    new-instance v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$7;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$7;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 1201
    .restart local v0    # "facebook":Landroid/preference/Preference;
    :cond_8
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1202
    new-instance v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$8;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$8;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private initPreferenceOption(Landroid/preference/PreferenceGroup;)V
    .locals 14
    .param p1, "settings"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 996
    const/4 v3, 0x0

    .line 997
    .local v3, "isVideoMode":Z
    const/4 v2, 0x0

    .line 998
    .local v2, "isLiveBroadcastAllowModule":Z
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "modeSelected"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1000
    .local v5, "modeIndex":I
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/camera/util/CameraUtil;->isVideoActionModule(ILandroid/content/Context;)Z

    move-result v3

    .line 1001
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/camera/util/CameraUtil;->isLiveBroadcastAllowModule(ILandroid/content/Context;)Z

    move-result v2

    .line 1004
    .end local v5    # "modeIndex":I
    :cond_0
    if-eqz v3, :cond_a

    .line 1005
    const-string v11, "pref_shutter_control_boolean_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 1006
    .local v8, "shutterControl":Landroid/preference/Preference;
    if-eqz v8, :cond_1

    .line 1007
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_1
    const-string v11, "pref_brand_logo_show_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 1009
    .local v10, "watermarkShow":Landroid/preference/Preference;
    if-eqz v10, :cond_2

    .line 1010
    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1011
    :cond_2
    const-string v11, "pref_scene_detection_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 1012
    .local v7, "sceneDetection":Landroid/preference/Preference;
    if-eqz v7, :cond_3

    .line 1013
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1014
    :cond_3
    const-string v11, "pref_sr_control_boolean_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 1015
    .local v9, "srSetting":Landroid/preference/Preference;
    if-eqz v9, :cond_4

    .line 1016
    invoke-virtual {p1, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1017
    :cond_4
    const-string v11, "pref_front_camera_mirror_key"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1018
    .local v1, "frontCameraMirror":Landroid/preference/Preference;
    if-eqz v1, :cond_5

    .line 1019
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1021
    :cond_5
    const-string v11, "pref_camera_hdr_key"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1022
    .local v0, "autoHDRSupport":Landroid/preference/Preference;
    if-eqz v0, :cond_6

    .line 1023
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1025
    :cond_6
    const-string v11, "pref_category_resolution"

    .line 1026
    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 1027
    .local v6, "resolutionScreen":Landroid/preference/PreferenceScreen;
    const-string v11, "pref_category_photo_resolution"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 1044
    .end local v0    # "autoHDRSupport":Landroid/preference/Preference;
    .end local v1    # "frontCameraMirror":Landroid/preference/Preference;
    .end local v7    # "sceneDetection":Landroid/preference/Preference;
    .end local v8    # "shutterControl":Landroid/preference/Preference;
    .end local v9    # "srSetting":Landroid/preference/Preference;
    .end local v10    # "watermarkShow":Landroid/preference/Preference;
    :cond_7
    :goto_0
    iget-boolean v11, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mIsSecureCamera:Z

    if-nez v11, :cond_8

    if-nez v2, :cond_9

    .line 1045
    :cond_8
    const-string v11, "pref_category_live_broadcast"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1046
    .local v4, "liveBroadcast":Landroid/preference/Preference;
    if-eqz v4, :cond_9

    .line 1047
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1050
    .end local v4    # "liveBroadcast":Landroid/preference/Preference;
    :cond_9
    return-void

    .line 1029
    .end local v6    # "resolutionScreen":Landroid/preference/PreferenceScreen;
    :cond_a
    const-string v11, "pref_category_resolution"

    .line 1030
    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 1031
    .restart local v6    # "resolutionScreen":Landroid/preference/PreferenceScreen;
    const-string v11, "pref_category_video_resolution"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 1033
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBurst()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1034
    const-string v11, "pref_shutter_control_boolean_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 1035
    .restart local v8    # "shutterControl":Landroid/preference/Preference;
    if-eqz v8, :cond_7

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private isAppInLockTaskModePinned()Z
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    const-string v2, "activity"

    .line 680
    invoke-virtual {v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 682
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSizes()V
    .locals 3

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-nez v1, :cond_0

    .line 899
    sget-object v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "null deviceInfo, cannot display resolution sizes"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    new-instance v0, Lcom/android/camera/settings/PictureSizeLoader;

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/settings/PictureSizeLoader;-><init>(Landroid/content/Context;)V

    .line 904
    .local v0, "loader":Lcom/android/camera/settings/PictureSizeLoader;
    invoke-virtual {v0}, Lcom/android/camera/settings/PictureSizeLoader;->computePictureSizes()Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    goto :goto_0
.end method

.method private locationPermissionCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1389
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1393
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080127

    .line 1394
    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$10;

    invoke-direct {v3, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$10;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1410
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1406
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1, v4}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    if-nez p1, :cond_1

    .line 640
    sget-object v3, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "attempting to delete from null preference group"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 660
    :cond_0
    :goto_0
    return v2

    .line 643
    :cond_1
    if-nez p2, :cond_2

    .line 644
    sget-object v3, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "attempting to delete null preference"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 649
    goto :goto_0

    .line 652
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 653
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 654
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    .line 655
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v1, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 656
    goto :goto_0

    .line 652
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private registerStorageReceiver()V
    .locals 3

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1294
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1297
    new-instance v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$9;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 1308
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1310
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setEnableOptions()V
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Storage;->isSDCardAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEnableStorage(Z)V

    .line 519
    return-void
.end method

.method private setEnableStorage(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1320
    const-string v2, "pref_data_storage_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1321
    .local v1, "preference":Landroid/preference/ListPreference;
    if-nez v1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    const v2, 0x7f0801b4

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEnabled(Landroid/preference/Preference;ZLjava/lang/CharSequence;)V

    .line 1324
    invoke-direct {p0, p1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setStorageValue(Z)V

    .line 1325
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1326
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1327
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private setEnabled(Landroid/preference/Preference;ZLjava/lang/CharSequence;)V
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "enabled"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    .line 1332
    if-nez p1, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1335
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p3, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, "plainTitle":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1337
    .local v2, "coloredTitle":Landroid/text/Spannable;
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1338
    .local v0, "color":I
    :goto_1
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v2, v7, v9, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1339
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1341
    instance-of v7, p1, Lcom/android/camera/settings/ManagedListPreference;

    if-nez v7, :cond_0

    .line 1344
    instance-of v7, p1, Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_0

    move-object v5, p1

    .line 1345
    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 1346
    .local v5, "screenPref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1347
    .local v6, "summary":Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    .line 1348
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v6, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "plainSummary":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1350
    .local v1, "coloredSummary":Landroid/text/Spannable;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v1, v7, v9, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1351
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1337
    .end local v0    # "color":I
    .end local v1    # "coloredSummary":Landroid/text/Spannable;
    .end local v3    # "plainSummary":Ljava/lang/String;
    .end local v5    # "screenPref":Landroid/preference/PreferenceScreen;
    .end local v6    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const v0, -0x777778

    goto :goto_1
.end method

.method private setEntries(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 750
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 754
    check-cast v0, Landroid/preference/ListPreference;

    .line 755
    .local v0, "listPreference":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_back_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_front_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 759
    :cond_3
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_quality_back_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 760
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesBack:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 761
    :cond_4
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_quality_front_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesFront:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_0
.end method

.method private setEntriesForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V
    .locals 7
    .param p1, "selectedQualities"    # Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    .param p2, "preference"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v6, 0x0

    .line 826
    if-nez p1, :cond_0

    .line 855
    :goto_0
    return-void

    .line 832
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v1, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    iget v5, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    const-string v4, "large"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    iget v4, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    iget v5, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    if-eq v4, v5, :cond_1

    .line 837
    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    iget v5, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    const-string v4, "medium"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_1
    iget v4, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    iget v5, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    if-eq v4, v5, :cond_2

    .line 841
    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    iget v5, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    const-string v4, "small"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_2
    iget-object v4, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 845
    iget-object v4, p1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 846
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 847
    .local v3, "quality":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    .line 849
    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "quality":Ljava/lang/Integer;
    :cond_4
    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 854
    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setEntriesForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 5
    .param p2, "preference"    # Landroid/preference/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Landroid/preference/ListPreference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "selectedSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-nez p1, :cond_0

    .line 815
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 807
    .local v0, "entries":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 808
    .local v1, "entryValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 809
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 810
    .local v3, "size":Lcom/android/camera/util/Size;
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSizeSummaryString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 811
    invoke-static {v3}, Lcom/android/camera/settings/SettingsUtil;->sizeToSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 813
    .end local v3    # "size":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 814
    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLocationPreference(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1385
    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1386
    return-void
.end method

.method private setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 542
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pref_screen_extra"

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string v2, "pref_screen_title_extra"

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 545
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v2}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v2}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "modeSelected"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 547
    .local v1, "modeIndex":I
    const-string v2, "modeSelected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    .end local v1    # "modeIndex":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v2}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    .line 551
    invoke-virtual {v3}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    :cond_2
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSettingBrightnessLevel(F)V
    .locals 4
    .param p1, "brightness_level"    # F

    .prologue
    .line 523
    sget-object v1, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSettingBrightnessLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v1}, Lcom/android/camera/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 525
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 526
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v1}, Lcom/android/camera/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 527
    return-void
.end method

.method private setStorageValue(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const v5, 0x7f0801b3

    .line 1358
    const-string v2, "pref_data_storage_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1360
    .local v1, "preference":Landroid/preference/ListPreference;
    if-nez v1, :cond_0

    .line 1361
    sget-object v2, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "When we try to update storage\'s value, we get pref is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1373
    :goto_0
    return-void

    .line 1364
    :cond_0
    if-nez p1, :cond_1

    .line 1365
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1367
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_data_storage_key"

    const v4, 0x7f0803de

    invoke-virtual {p0, v4}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "defaultValue":Ljava/lang/String;
    const v2, 0x7f0803df

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    const v2, 0x7f0801b2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1371
    :cond_2
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private setSummary(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 771
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 791
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 775
    check-cast v0, Landroid/preference/ListPreference;

    .line 776
    .local v0, "listPreference":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_back_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_front_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_quality_back_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 783
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesBack:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 784
    :cond_3
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_quality_front_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 785
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesFront:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 786
    :cond_4
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 787
    check-cast v1, Lcom/android/camera/settings/HDRManagedListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/settings/HDRManagedListPreference;->setValueDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_5
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryForSelection(Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;Landroid/preference/ListPreference;)V
    .locals 3
    .param p1, "selectedQualities"    # Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
    .param p2, "preference"    # Landroid/preference/ListPreference;

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 891
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->getFromSetting(Ljava/lang/String;)I

    move-result v0

    .line 889
    .local v0, "selectedQuality":I
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSummaryForSelection(Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 6
    .param p2, "preference"    # Landroid/preference/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Landroid/preference/ListPreference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "displayableSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    invoke-static {v0}, Lcom/android/camera/settings/SettingsUtil;->sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 870
    .local v1, "settingSize":Lcom/android/camera/util/Size;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 873
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getSizeSummaryString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilities()V
    .locals 2

    .prologue
    .line 602
    const-string v1, "pref_category_resolution"

    .line 603
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 604
    .local v0, "resolutions":Landroid/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    const-string v1, "pref_camera_picturesize_back_key"

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 605
    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 607
    const-string v1, "pref_video_quality_back_key"

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 607
    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v1, v1, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    const-string v1, "pref_camera_picturesize_front_key"

    .line 612
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 611
    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 613
    const-string v1, "pref_video_quality_front_key"

    .line 614
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 613
    invoke-direct {p0, v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->recursiveDelete(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 616
    :cond_1
    return-void
.end method

.method private unregisterStorageReceiver()V
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 1317
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    .line 567
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 568
    .local v1, "root":Landroid/preference/PreferenceScreen;
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mGetSubPrefAsRoot:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPrefKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v1

    .line 573
    :cond_1
    return-object v0

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPrefKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 572
    .local v0, "match":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_1

    .line 575
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initSettingsOptions()V
    .locals 8

    .prologue
    .line 969
    const-string v5, "prefscreen_top"

    invoke-virtual {p0, v5}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 970
    .local v3, "group":Landroid/preference/PreferenceGroup;
    if-nez v3, :cond_0

    .line 990
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    if-eqz v5, :cond_1

    .line 974
    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    sget-object v6, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-static {v5, v6}, Lcom/android/camera/settings/SettingsUtil;->getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I

    move-result v0

    .line 975
    .local v0, "cameraBackId":I
    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    sget-object v6, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-static {v5, v6}, Lcom/android/camera/settings/SettingsUtil;->getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I

    move-result v1

    .line 976
    .local v1, "cameraFrontId":I
    const/4 v5, 0x2

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v0, v2, v5

    const/4 v5, 0x1

    aput v1, v2, v5

    .line 977
    .local v2, "cameraIds":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 978
    aget v5, v2, v4

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    aget v6, v2, v4

    invoke-interface {v5, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    aget v6, v2, v4

    .line 979
    invoke-interface {v5, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v5

    if-nez v5, :cond_2

    .line 980
    sget-object v5, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The settings options (Shutter Sound) is not supported with camera id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 981
    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {p0, v5}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 987
    .end local v0    # "cameraBackId":I
    .end local v1    # "cameraFrontId":I
    .end local v2    # "cameraIds":[I
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->initPreferenceOption(Landroid/preference/PreferenceGroup;)V

    .line 988
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->initAboutOption(Landroid/preference/PreferenceGroup;)V

    .line 989
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->initLiveBroadcastOption(Landroid/preference/PreferenceGroup;)V

    goto :goto_0

    .line 977
    .restart local v0    # "cameraBackId":I
    .restart local v1    # "cameraFrontId":I
    .restart local v2    # "cameraIds":[I
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1465
    packed-switch p1, :pswitch_data_0

    .line 1475
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    invoke-direct {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08012b

    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1471
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 369
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/android/camera/settings/CameraSettingsActivity;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 372
    .local v2, "arguments":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 373
    const-string v15, "pref_screen_extra"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPrefKey:Ljava/lang/String;

    .line 374
    const-string v15, "hide_advanced"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mHideAdvancedScreen:Z

    .line 375
    const-string v15, "secure_camera"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mIsSecureCamera:Z

    .line 376
    const-string v15, "hide_zsl"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mHideZSLOption:Z

    .line 377
    const-string v15, "pref_summary_visible_extra"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mSummaryVisible:Z

    .line 379
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 380
    .local v4, "context":Landroid/content/Context;
    const v15, 0x7f060001

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->addPreferencesFromResource(I)V

    .line 381
    const-string v15, "pref_category_advanced"

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 384
    .local v1, "advancedScreen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mSummaryVisible:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryVisible(Z)V

    .line 386
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mHideAdvancedScreen:Z

    if-eqz v15, :cond_6

    .line 387
    const-string v15, "prefscreen_top"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 388
    .local v10, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->showHDRButton()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 396
    const-string v15, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 397
    .local v5, "hdr":Landroid/preference/Preference;
    const-string v15, "prefscreen_top"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 398
    .restart local v10    # "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    .end local v5    # "hdr":Landroid/preference/Preference;
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    const-string v15, "pref_camera_recordlocation_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/camera/settings/LocationSwitchPreference;

    .line 402
    .local v9, "preference":Lcom/android/camera/settings/LocationSwitchPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/camera/settings/LocationSwitchPreference;->setGPSListener(Lcom/android/camera/settings/LocationSwitchPreference$Listener;)V

    .line 403
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isWaterMarkAvailable()Z

    move-result v15

    if-nez v15, :cond_3

    .line 404
    const-string v15, "pref_brand_logo_show_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 405
    .local v13, "watermark":Landroid/preference/Preference;
    const-string v15, "prefscreen_top"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 406
    .restart local v10    # "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    .end local v13    # "watermark":Landroid/preference/Preference;
    :cond_3
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedSceneRecognition()Z

    move-result v15

    if-nez v15, :cond_4

    .line 410
    const-string v15, "pref_scene_detection_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 411
    .local v11, "scenedetection":Landroid/preference/Preference;
    const-string v15, "prefscreen_top"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 412
    .restart local v10    # "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    .end local v11    # "scenedetection":Landroid/preference/Preference;
    :cond_4
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqSuperResolution()Z

    move-result v15

    if-nez v15, :cond_5

    .line 416
    const-string v15, "pref_sr_setting_boolean_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 417
    .local v12, "superResolution":Landroid/preference/Preference;
    const-string v15, "prefscreen_top"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 418
    .restart local v10    # "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    .end local v12    # "superResolution":Landroid/preference/Preference;
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mGetSubPrefAsRoot:Z

    .line 424
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/camera/util/CameraSettingsActivityHelper;->addAdditionalPreferences(Landroid/preference/PreferenceFragment;Landroid/content/Context;)V

    .line 425
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mGetSubPrefAsRoot:Z

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "camcorderProfileNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v15, v3

    if-ge v6, v15, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aget-object v17, v3, v6

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 389
    .end local v3    # "camcorderProfileNames":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "preference":Lcom/android/camera/settings/LocationSwitchPreference;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mHideZSLOption:Z

    if-eqz v15, :cond_1

    .line 390
    const-string v15, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 391
    .local v14, "zslPreference":Landroid/preference/Preference;
    const-string v15, "pref_category_advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 392
    .restart local v10    # "root":Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_1

    invoke-virtual {v10, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 431
    .end local v10    # "root":Landroid/preference/PreferenceScreen;
    .end local v14    # "zslPreference":Landroid/preference/Preference;
    .restart local v3    # "camcorderProfileNames":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "preference":Lcom/android/camera/settings/LocationSwitchPreference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/util/ProductModelUtil;->getExtraVideoQualityNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 432
    .local v7, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_8

    .line 433
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 434
    .local v8, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mCamcorderProfileNames:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 437
    .end local v8    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    sget-object v15, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 438
    invoke-static {v4, v15}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v15

    .line 439
    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mInfos:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->initSettingsOptions()V

    .line 441
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    .line 674
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 675
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 666
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->dismissSizeDialogs()V

    .line 667
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 668
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 669
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const v2, 0x7f08012b

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1414
    packed-switch p1, :pswitch_data_0

    .line 1461
    :goto_0
    return-void

    .line 1416
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    .line 1417
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1422
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    goto :goto_0

    .line 1425
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08012f

    .line 1426
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08012e

    .line 1427
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$12;

    invoke-direct {v2, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$12;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080128

    .line 1437
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;

    invoke-direct {v2, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$11;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 1450
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v3

    if-nez v0, :cond_2

    .line 1451
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    goto :goto_0

    .line 1454
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    .line 1455
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 445
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 455
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->loadSizes()V

    .line 458
    iget-object v6, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureSizes:Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    iget-object v6, v6, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    new-instance v7, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;

    invoke-direct {v7, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-static {p0, v6, v7}, Lcom/android/camera/util/CameraSettingsActivityHelper;->onSizesLoaded(Landroid/preference/PreferenceFragment;Ljava/util/List;Lcom/android/camera/settings/ListPreferenceFiller;)V

    .line 468
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setVisibilities()V

    .line 470
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setEnableOptions()V

    .line 471
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->reloadLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    .line 474
    const-string v6, "pref_category_resolution"

    .line 475
    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 476
    .local v5, "resolutionScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v5}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->fillEntriesAndSummaries(Landroid/preference/PreferenceGroup;)V

    .line 477
    invoke-direct {p0, v5}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 478
    const-string v6, "pref_camera_hdr_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 479
    .local v2, "hdrPref":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummary(Landroid/preference/Preference;)V

    .line 480
    const-string v6, "pref_category_advanced"

    .line 481
    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 483
    .local v1, "advancedScreen":Landroid/preference/PreferenceScreen;
    iget-boolean v6, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mHideAdvancedScreen:Z

    if-nez v6, :cond_0

    .line 484
    invoke-direct {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 487
    :cond_0
    const-string v6, "pref_category_about"

    .line 488
    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 489
    .local v0, "aboutScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 490
    const-string v6, "pref_category_live_broadcast"

    .line 491
    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 492
    .local v4, "liveBroadcastScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v4}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setPreferenceScreenIntent(Landroid/preference/PreferenceScreen;)V

    .line 494
    const-string v6, "pref_launch_help"

    invoke-virtual {p0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 495
    .local v3, "helpPref":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 496
    new-instance v6, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$2;

    invoke-direct {v6, p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$2;-><init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 506
    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 508
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->registerStorageReceiver()V

    .line 509
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 687
    invoke-virtual {p0, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummary(Landroid/preference/Preference;)V

    .line 689
    const-string v3, "pref_camera_picturesize_back_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 691
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/UsageStatistics;->switchRearCameraResolution(Ljava/lang/String;)V

    .line 695
    :cond_0
    const-string v3, "pref_camera_picturesize_front_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 697
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mPictureResolutionData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/UsageStatistics;->switchFrontCameraResolution(Ljava/lang/String;)V

    .line 701
    :cond_1
    const-string v3, "pref_video_quality_back_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 703
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/UsageStatistics;->switchRearVideoResolution(Ljava/lang/String;)V

    .line 707
    :cond_2
    const-string v3, "pref_video_quality_front_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 709
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mVideoResolutionData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/stats/UsageStatistics;->switchFrontVideoResolution(Ljava/lang/String;)V

    .line 714
    :cond_3
    const-string v3, "pref_reset_settings_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 716
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->isAppInLockTaskModePinned()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v3}, Lcom/android/camera/settings/CameraSettingsActivity;->stopLockTask()V

    .line 718
    :cond_4
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v2

    .line 719
    .local v2, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-eqz v2, :cond_5

    .line 720
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->logoutAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Ljava/lang/Runnable;)V

    .line 721
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->logoutAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Ljava/lang/Runnable;)V

    .line 722
    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->logoutAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Ljava/lang/Runnable;)V

    .line 726
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 727
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 726
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 728
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mIsSecureCamera:Z

    if-eqz v3, :cond_6

    .line 730
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.evenwell.camera2.RESET_CAEMRA_SETTING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/settings/CameraSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    :cond_6
    const v3, 0x4008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 739
    iget-boolean v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mIsSecureCamera:Z

    if-eqz v3, :cond_7

    .line 740
    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->mActivity:Lcom/android/camera/settings/CameraSettingsActivity;

    invoke-virtual {v3}, Lcom/android/camera/settings/CameraSettingsActivity;->finish()V

    .line 743
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :cond_7
    return-void

    .line 731
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 514
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->unregisterStorageReceiver()V

    .line 515
    return-void
.end method

.method public reloadLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V
    .locals 6
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 1222
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    .line 1223
    .local v1, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-nez v1, :cond_1

    .line 1224
    sget-object v4, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "The LiveBroadcastManager is not created. Skip reloadLiveBroadcast!"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne p1, v4, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_weibo"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1230
    .local v2, "weibo":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 1231
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1233
    .end local v2    # "weibo":Landroid/preference/Preference;
    :cond_2
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne p1, v4, :cond_3

    .line 1234
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_youtube"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1235
    .local v3, "youtube":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 1236
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1238
    .end local v3    # "youtube":Landroid/preference/Preference;
    :cond_3
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne p1, v4, :cond_4

    .line 1239
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_facebook"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1240
    .local v0, "facebook":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1241
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1243
    .end local v0    # "facebook":Landroid/preference/Preference;
    :cond_4
    if-nez p1, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_weibo"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1245
    .restart local v2    # "weibo":Landroid/preference/Preference;
    if-eqz v2, :cond_5

    .line 1246
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1248
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_youtube"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1249
    .restart local v3    # "youtube":Landroid/preference/Preference;
    if-eqz v3, :cond_6

    .line 1250
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1252
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_live_broadcast_account_facebook"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1253
    .restart local v0    # "facebook":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1254
    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public requireEnableGPS()V
    .locals 2

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setLocationPreference(Z)V

    .line 1382
    :goto_0
    return-void

    .line 1380
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->locationPermissionCheck()V

    goto :goto_0
.end method

.method public setSummaryVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 1265
    const-string v3, "prefscreen_top"

    invoke-virtual {p0, v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1266
    .local v0, "group":Landroid/preference/PreferenceGroup;
    if-nez v0, :cond_1

    .line 1288
    :cond_0
    return-void

    .line 1268
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1269
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1270
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/camera/settings/PreferenceInterface;

    if-eqz v3, :cond_3

    .line 1271
    check-cast v2, Lcom/android/camera/settings/PreferenceInterface;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-interface {v2, p1}, Lcom/android/camera/settings/PreferenceInterface;->setSummaryVisible(Z)V

    .line 1268
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_category_resolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1275
    if-eqz p1, :cond_4

    .line 1276
    const v3, 0x7f0801a8

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 1278
    :cond_4
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1279
    :cond_5
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_category_live_broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1282
    if-eqz p1, :cond_6

    .line 1283
    const v3, 0x7f0801a6

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 1285
    :cond_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
