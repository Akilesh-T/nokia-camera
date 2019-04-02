.class public Lcom/android/camera/app/FirstRunDialog;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ASPECT_RATIO:Lcom/android/camera/exif/Rational;

.field private static final DEFAULT_LOCATION_RECORDING_ENABLED:Z = true

.field private static final DEFAULT_USER_AGREEMENT_NEVER_SHOW:Z = true

.field private static final ON_RESUME_DELAY_MILLIS:I = 0x32

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mAspectRatioPreferenceDialog:Landroid/app/Dialog;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasShown:Z

.field private mIsCheckDialogNotShow:Z

.field private final mIsSecureOrCaptureIntent:Z

.field private final mListener:Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

.field private mLocationPreferenceDialog:Landroid/app/Dialog;

.field private final mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private mPause:Z

.field private mProTutorialDialog:Landroid/app/Dialog;

.field private final mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mUserAgreementDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FirstRunDialog"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/FirstRunDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 66
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    sput-object v0, Lcom/android/camera/app/FirstRunDialog;->DEFAULT_ASPECT_RATIO:Lcom/android/camera/exif/Rational;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/content/Context;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;ZLandroid/os/Handler;Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "androidContext"    # Landroid/content/Context;
    .param p3, "resolutionSetting"    # Lcom/android/camera/settings/ResolutionSetting;
    .param p4, "settingManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p5, "hardwareManager"    # Lcom/android/camera/one/OneCameraManager;
    .param p6, "isSecureOrCaptureIntent"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "listener"    # Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mHasShown:Z

    .line 126
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    .line 127
    iput-object p2, p0, Lcom/android/camera/app/FirstRunDialog;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/android/camera/app/FirstRunDialog;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    .line 129
    iput-object p4, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 130
    iput-object p5, p0, Lcom/android/camera/app/FirstRunDialog;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 131
    iput-boolean p6, p0, Lcom/android/camera/app/FirstRunDialog;->mIsSecureOrCaptureIntent:Z

    .line 132
    iput-object p7, p0, Lcom/android/camera/app/FirstRunDialog;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p8, p0, Lcom/android/camera/app/FirstRunDialog;->mListener:Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    .line 134
    iput-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mPause:Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/one/OneCameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/ResolutionSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mResolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/app/FirstRunDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mPause:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/app/FirstRunDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/app/FirstRunDialog;->mHasShown:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/app/FirstRunDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->shouldShowProTutorialDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/app/FirstRunDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->promptProTutorialDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/app/FirstRunDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mListener:Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/FirstRunDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->shouldShowUserAgreementDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/FirstRunDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->promptUserAgreementDialog()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/app/FirstRunDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/app/FirstRunDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mIsCheckDialogNotShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/app/FirstRunDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/app/FirstRunDialog;->mIsCheckDialogNotShow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/app/FirstRunDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/app/FirstRunDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/FirstRunDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$900()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/app/FirstRunDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private promptAspectRatioPreferenceDialog()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 224
    new-instance v0, Lcom/android/camera/widget/AspectRatioDialogLayout;

    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/camera/app/FirstRunDialog;->DEFAULT_ASPECT_RATIO:Lcom/android/camera/exif/Rational;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/widget/AspectRatioDialogLayout;-><init>(Landroid/content/Context;Lcom/android/camera/exif/Rational;)V

    .line 226
    .local v0, "dialogLayout":Lcom/android/camera/widget/AspectRatioDialogLayout;
    new-instance v1, Lcom/android/camera/app/FirstRunDialog$1;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FirstRunDialog$1;-><init>(Lcom/android/camera/app/FirstRunDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/AspectRatioDialogLayout;->setListener(Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;)V

    .line 262
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    .line 263
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/app/FirstRunDialog$2;

    invoke-direct {v2, p0}, Lcom/android/camera/app/FirstRunDialog$2;-><init>(Lcom/android/camera/app/FirstRunDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 276
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 277
    return-void
.end method

.method private promptProTutorialDialog()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 408
    new-instance v0, Lcom/android/camera/widget/ProTutorialDialogLayout;

    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/app/FirstRunDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 409
    .local v0, "dialogLayout":Lcom/android/camera/widget/ProTutorialDialogLayout;
    new-instance v1, Lcom/android/camera/app/FirstRunDialog$5;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FirstRunDialog$5;-><init>(Lcom/android/camera/app/FirstRunDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->setListener(Lcom/android/camera/widget/ProTutorialDialogLayout$ProTutorialDialogListener;)V

    .line 421
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    .line 422
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/app/FirstRunDialog$6;

    invoke-direct {v2, p0}, Lcom/android/camera/app/FirstRunDialog$6;-><init>(Lcom/android/camera/app/FirstRunDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 435
    iget-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 436
    return-void
.end method

.method private promptUserAgreementDialog()V
    .locals 8

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog;->mListener:Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    invoke-interface {v3}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunDialogShowed()V

    .line 331
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/app/FirstRunDialog;->mIsCheckDialogNotShow:Z

    .line 332
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 333
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 334
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 335
    .local v0, "ask":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/camera/app/FirstRunDialog$3;

    invoke-direct {v3, p0}, Lcom/android/camera/app/FirstRunDialog$3;-><init>(Lcom/android/camera/app/FirstRunDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/camera/app/FirstRunDialog$4;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/app/FirstRunDialog$4;-><init>(Lcom/android/camera/app/FirstRunDialog;Landroid/view/View;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    return-void
.end method

.method private shouldShowAspectRatioDialog()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v0

    return v0
.end method

.method private shouldShowLocationDialog()Z
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowProTutorialDialog()Z
    .locals 3

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_pro_mode_tutorial_shown"

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mIsSecureOrCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowUserAgreementDialog()Z
    .locals 3

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mHasShown:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedCheckNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/FirstRunDialog;->mPause:Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 174
    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mAspectRatioPreferenceDialog:Landroid/app/Dialog;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mLocationPreferenceDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mLocationPreferenceDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mLocationPreferenceDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mLocationPreferenceDialog:Landroid/app/Dialog;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 185
    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mUserAgreementDialog:Landroid/app/Dialog;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    iput-object v1, p0, Lcom/android/camera/app/FirstRunDialog;->mProTutorialDialog:Landroid/app/Dialog;

    .line 192
    :cond_3
    return-void
.end method

.method public setHasShown(Z)V
    .locals 0
    .param p1, "hasShown"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/camera/app/FirstRunDialog;->mHasShown:Z

    .line 163
    return-void
.end method

.method public showIfNecessary()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->shouldShowAspectRatioDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->promptAspectRatioPreferenceDialog()V

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->shouldShowUserAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->promptUserAgreementDialog()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->shouldShowProTutorialDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/camera/app/FirstRunDialog;->promptProTutorialDialog()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/camera/app/FirstRunDialog;->mListener:Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    invoke-interface {v0}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunStateReady()V

    goto :goto_0
.end method
