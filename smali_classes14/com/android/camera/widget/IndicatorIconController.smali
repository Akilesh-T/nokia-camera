.class public Lcom/android/camera/widget/IndicatorIconController;
.super Ljava/lang/Object;
.source "IndicatorIconController.java"

# interfaces
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ButtonManager$ButtonStatusListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAutoHdrIndicatorIcons:Landroid/content/res/TypedArray;

.field private mController:Lcom/android/camera/app/AppController;

.field private mCountdownTimerIndicator:Landroid/widget/ImageView;

.field private mCountdownTimerIndicatorIcons:Landroid/content/res/TypedArray;

.field private mExposureIndicatorN1:Landroid/widget/ImageView;

.field private mExposureIndicatorN2:Landroid/widget/ImageView;

.field private mExposureIndicatorP1:Landroid/widget/ImageView;

.field private mExposureIndicatorP2:Landroid/widget/ImageView;

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFlashIndicatorPhotoIcons:Landroid/content/res/TypedArray;

.field private mFlashIndicatorVideoIcons:Landroid/content/res/TypedArray;

.field private mHdrIndicator:Landroid/widget/ImageView;

.field private mHdrIndicatorIcons:Landroid/content/res/TypedArray;

.field private mHdrPlusIndicatorIcons:Landroid/content/res/TypedArray;

.field private mPanoIndicator:Landroid/widget/ImageView;

.field private mPanoIndicatorIcons:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "IndicatorIconCtrlr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/IndicatorIconController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/view/View;)V
    .locals 4
    .param p1, "controller"    # Lcom/android/camera/app/AppController;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    .line 68
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0f0126

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicator:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicatorPhotoIcons:Landroid/content/res/TypedArray;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicatorVideoIcons:Landroid/content/res/TypedArray;

    .line 76
    const v2, 0x7f0f0124

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicator:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrPlusIndicatorIcons:Landroid/content/res/TypedArray;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicatorIcons:Landroid/content/res/TypedArray;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mAutoHdrIndicatorIcons:Landroid/content/res/TypedArray;

    .line 84
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->getPanoramaOrientationIndicatorArrayId()I

    move-result v1

    .line 85
    .local v1, "panoIndicatorArrayId":I
    if-lez v1, :cond_0

    .line 86
    const v2, 0x7f0f0123

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicator:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicatorIcons:Landroid/content/res/TypedArray;

    .line 91
    :cond_0
    const v2, 0x7f0f0125

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mCountdownTimerIndicator:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mCountdownTimerIndicatorIcons:Landroid/content/res/TypedArray;

    .line 95
    const v2, 0x7f0f011f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN2:Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f0f0120

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN1:Landroid/widget/ImageView;

    .line 97
    const v2, 0x7f0f0121

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP1:Landroid/widget/ImageView;

    .line 98
    const v2, 0x7f0f0122

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP2:Landroid/widget/ImageView;

    .line 99
    return-void
.end method

.method private static changeVisibility(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method private setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V
    .locals 7
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "iconArray"    # Landroid/content/res/TypedArray;
    .param p5, "showDefault"    # Z

    .prologue
    const/16 v6, 0x8

    .line 304
    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 306
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, "valueIndex":I
    if-gez v2, :cond_0

    .line 311
    sget-object v4, Lcom/android/camera/widget/IndicatorIconController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "The setting for this indicator is not available."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 317
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Indicator drawable is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "visibilityChanged":Z
    if-nez p5, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/settings/SettingsManager;->isDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    invoke-static {p3, v6}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 326
    :cond_2
    const/4 v4, 0x0

    invoke-static {p3, v4}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private syncCountdownTimerIndicator()V
    .locals 7

    .prologue
    const/16 v1, 0xc

    .line 286
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v6

    .line 288
    .local v6, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v1, "default_scope"

    const-string v2, "pref_camera_countdown_duration_key"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mCountdownTimerIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mCountdownTimerIndicatorIcons:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mCountdownTimerIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private syncExposureIndicator()V
    .locals 7

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 242
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN2:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN1:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP1:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP2:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 246
    :cond_0
    sget-object v3, Lcom/android/camera/widget/IndicatorIconController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Trying to sync exposure indicators that are not initialized."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN2:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    .line 253
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN1:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    .line 254
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP1:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    .line 255
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP2:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    .line 257
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 258
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    .line 262
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_exposure_key"

    .line 261
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 263
    .local v2, "compValue":I
    int-to-float v3, v2

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->getExposureCompensationStep()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 266
    .local v1, "comp":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN2:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorN1:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP1:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 280
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mExposureIndicatorP2:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private syncFlashIndicator()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v6

    .line 173
    .local v6, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v6, v5}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v6, v5}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v7

    .line 179
    .local v7, "modeIndex":I
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v7, v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_video_flashmode_key"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicatorVideoIcons:Landroid/content/res/TypedArray;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    .line 197
    .end local v7    # "modeIndex":I
    :goto_0
    return-void

    .line 184
    .restart local v7    # "modeIndex":I
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v7, v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_hdr_plus_flash_mode"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicatorPhotoIcons:Landroid/content/res/TypedArray;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicatorPhotoIcons:Landroid/content/res/TypedArray;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    goto :goto_0

    .line 195
    .end local v7    # "modeIndex":I
    :cond_4
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mFlashIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private syncHdrIndicator()V
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v5, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v6

    .line 206
    .local v6, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v6, v1}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v1, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrPlusIndicatorIcons:Landroid/content/res/TypedArray;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    .line 220
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v6, v2}, Lcom/android/camera/ButtonManager;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v6, v2}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v1, "default_scope"

    const-string v2, "pref_camera_hdr_key"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    .line 216
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCurrentModuleController()Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/hardware/HardwareSpec;->isAutoHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mAutoHdrIndicatorIcons:Landroid/content/res/TypedArray;

    :goto_1
    move-object v0, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicatorIcons:Landroid/content/res/TypedArray;

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mHdrIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private syncIndicatorWithButton(I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    .line 116
    sparse-switch p1, :sswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 118
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncFlashIndicator()V

    goto :goto_0

    .line 122
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncFlashIndicator()V

    goto :goto_0

    .line 126
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncHdrIndicator()V

    goto :goto_0

    .line 130
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncHdrIndicator()V

    goto :goto_0

    .line 134
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncExposureIndicator()V

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private syncPanoIndicator()V
    .locals 7

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lcom/android/camera/widget/IndicatorIconController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Trying to sync a pano indicator that is not initialized."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v6

    .line 232
    .local v6, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v6}, Lcom/android/camera/ButtonManager;->isPanoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const-string v1, "default_scope"

    const-string v2, "pref_camera_pano_orientation"

    iget-object v3, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicatorIcons:Landroid/content/res/TypedArray;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/IndicatorIconController;->setIndicatorState(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/res/TypedArray;Z)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/IndicatorIconController;->mPanoIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/widget/IndicatorIconController;->changeVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public onButtonEnabledChanged(Lcom/android/camera/ButtonManager;I)V
    .locals 0
    .param p1, "buttonManager"    # Lcom/android/camera/ButtonManager;
    .param p2, "buttonId"    # I

    .prologue
    .line 108
    invoke-direct {p0, p2}, Lcom/android/camera/widget/IndicatorIconController;->syncIndicatorWithButton(I)V

    .line 109
    return-void
.end method

.method public onButtonVisibilityChanged(Lcom/android/camera/ButtonManager;I)V
    .locals 0
    .param p1, "buttonManager"    # Lcom/android/camera/ButtonManager;
    .param p2, "buttonId"    # I

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/android/camera/widget/IndicatorIconController;->syncIndicatorWithButton(I)V

    .line 104
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncFlashIndicator()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string v0, "pref_camera_video_flashmode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncFlashIndicator()V

    goto :goto_0

    .line 340
    :cond_2
    const-string v0, "pref_camera_hdr_plus_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncHdrIndicator()V

    goto :goto_0

    .line 344
    :cond_3
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncHdrIndicator()V

    goto :goto_0

    .line 348
    :cond_4
    const-string v0, "pref_camera_pano_orientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncPanoIndicator()V

    goto :goto_0

    .line 352
    :cond_5
    const-string v0, "pref_camera_exposure_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncExposureIndicator()V

    goto :goto_0

    .line 356
    :cond_6
    const-string v0, "pref_camera_countdown_duration_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncCountdownTimerIndicator()V

    goto :goto_0
.end method

.method public syncIndicators()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncFlashIndicator()V

    .line 149
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncHdrIndicator()V

    .line 150
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncPanoIndicator()V

    .line 151
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncExposureIndicator()V

    .line 152
    invoke-direct {p0}, Lcom/android/camera/widget/IndicatorIconController;->syncCountdownTimerIndicator()V

    .line 153
    return-void
.end method
