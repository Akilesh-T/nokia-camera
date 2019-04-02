.class public Lcom/android/camera/ButtonManager;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ButtonManager$ButtonCallback;,
        Lcom/android/camera/ButtonManager$ButtonStatusListener;
    }
.end annotation


# static fields
.field public static final BUTTON_BEAUTY:I = 0x16

.field public static final BUTTON_CAMERA:I = 0x3

.field public static final BUTTON_CAMERA_SCREEN:I = 0xd

.field public static final BUTTON_CANCEL:I = 0x6

.field public static final BUTTON_COUNTDOWN:I = 0xc

.field public static final BUTTON_DAUL_CAM_SWITCHER:I = 0x12

.field public static final BUTTON_DONE:I = 0x7

.field public static final BUTTON_DUAL_CAMERA:I = 0xe

.field public static final BUTTON_EFFECT_CHOOSE:I = 0x13

.field public static final BUTTON_EXPOSURE_COMPENSATION:I = 0xb

.field public static final BUTTON_FLASH:I = 0x0

.field public static final BUTTON_GOOGLE_LENS:I = 0x14

.field public static final BUTTON_GRID_LINES:I = 0xa

.field public static final BUTTON_HDR:I = 0x5

.field public static final BUTTON_HDR_PLUS:I = 0x4

.field public static final BUTTON_HDR_PLUS_FLASH:I = 0x2

.field public static final BUTTON_LIVE_BROADCAST:I = 0x10

.field public static final BUTTON_MODE_SETTINGS:I = 0x11

.field public static final BUTTON_MOTION:I = 0x15

.field public static final BUTTON_RETAKE:I = 0x8

.field public static final BUTTON_REVIEW:I = 0x9

.field public static final BUTTON_SOUND_FOCUS:I = 0xf

.field public static final BUTTON_SUPER_RESOLUTION:I = 0x18

.field public static final BUTTON_TORCH:I = 0x1

.field public static final BUTTON_TWICE_SHOT:I = 0x17

.field private static final NO_RESOURCE:I = -0x1

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sGcamIndex:I


# instance fields
.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonCancel:Landroid/widget/ImageButton;

.field private mButtonCancelContainer:Lcom/android/camera/ui/RotateLayout;

.field private mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonDone:Landroid/widget/ImageButton;

.field private mButtonDoneContainer:Lcom/android/camera/ui/RotateLayout;

.field private mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

.field private mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

.field private mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

.field private mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonRetake:Landroid/widget/ImageButton;

.field private mButtonRetakeContainer:Lcom/android/camera/ui/RotateLayout;

.field private mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

.field private mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

.field private mExposureCompensationStep:F

.field private mHideAnimation:Landroid/animation/ValueAnimator;

.field private mIsCameraButtonBlocked:Z

.field private mIsToggleBtnNeedAnim:Z

.field private mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

.field private mMaxExposureCompensation:I

.field private mMinExposureCompensation:I

.field private mModeOptions:Lcom/android/camera/widget/ModeOptions;

.field private mModeOptionsButtons:Landroid/view/View;

.field private mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mShowAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ButtonManager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ButtonManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 147
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/camera/ButtonManager;->sGcamIndex:I

    .line 150
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 151
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ButtonManager;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ButtonManager;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ButtonManager;I)Lcom/android/camera/MultiToggleImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ButtonManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ButtonManager;I)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ButtonManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ButtonManager;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 428
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button not known by id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flash button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    .line 426
    :goto_0
    return-object v0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Torch button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_2

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hdr plus torch button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 368
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_3

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 373
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_4

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hdr plus button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 378
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_5

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hdr button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 383
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_6

    .line 384
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Countdown button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 388
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_7

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera screen button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 393
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_8

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dual cam switcher button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

    goto :goto_0

    .line 398
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_9

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Focus button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 403
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_a

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Live broadcast button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 408
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_b

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Beauty button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 413
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_c

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Beauty button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 418
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_d

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Full Resolution button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 423
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

    if-nez v0, :cond_e

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DualSight twice shot button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private getButtonsReferences(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 215
    const v0, 0x7f0f020f

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

    .line 217
    const v0, 0x7f0f019e

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    .line 219
    const v0, 0x7f0f019b

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    .line 221
    const v0, 0x7f0f0198

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    .line 223
    const v0, 0x7f0f0199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

    .line 225
    const v0, 0x7f0f019c

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

    .line 227
    const v0, 0x7f0f019d

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

    .line 229
    const v0, 0x7f0f0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

    .line 230
    const v0, 0x7f0f0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

    .line 232
    const v0, 0x7f0f00db

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    .line 234
    const v0, 0x7f0f01e7

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    .line 236
    const v0, 0x7f0f01e6

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    .line 238
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancelContainer:Lcom/android/camera/ui/RotateLayout;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDoneContainer:Lcom/android/camera/ui/RotateLayout;

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetakeContainer:Lcom/android/camera/ui/RotateLayout;

    .line 245
    :cond_2
    const v0, 0x7f0f0190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    .line 246
    const v0, 0x7f0f018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ModeOptions;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    .line 247
    const v0, 0x7f0f00cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    .line 249
    const v0, 0x7f0f019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

    .line 250
    const v0, 0x7f0f0191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

    .line 252
    const v0, 0x7f0f0192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

    .line 254
    const v0, 0x7f0f0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

    .line 255
    const v0, 0x7f0f0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

    .line 256
    const v0, 0x7f0f0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

    .line 257
    return-void
.end method

.method private getImageButtonOrError(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 475
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button not known by id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancel button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancel:Landroid/widget/ImageButton;

    .line 473
    :goto_0
    return-object v0

    .line 445
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Done button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDone:Landroid/widget/ImageButton;

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retake button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Review button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetake:Landroid/widget/ImageButton;

    goto :goto_0

    .line 460
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

    if-nez v0, :cond_4

    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mode settings button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

    goto :goto_0

    .line 465
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

    if-nez v0, :cond_5

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Effect choose button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

    goto :goto_0

    .line 470
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

    if-nez v0, :cond_6

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Effect choose button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getSpaceOfButton(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 1588
    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 1589
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1590
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1591
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 1592
    .local v3, "isBtnFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1593
    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/Space;

    if-eqz v4, :cond_0

    .line 1594
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1599
    .end local v0    # "childCount":I
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "i":I
    .end local v3    # "isBtnFound":Z
    :goto_1
    return-object v4

    .line 1596
    .restart local v0    # "childCount":I
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    .restart local v2    # "i":I
    .restart local v3    # "isBtnFound":Z
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    .line 1592
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1596
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 1599
    .end local v0    # "childCount":I
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "i":I
    .end local v3    # "isBtnFound":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hideIconAlphaAnim(Ljava/util/List;ZZ)V
    .locals 4
    .param p1, "iconList"    # Ljava/util/List;
    .param p2, "hidden"    # Z
    .param p3, "isHideFlash"    # Z

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1669
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    :goto_0
    return-void

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ButtonManager$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ButtonManager$25;-><init>(Lcom/android/camera/ButtonManager;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1694
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1695
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mHideAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1669
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initializeBeautyButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 1369
    if-lez p4, :cond_0

    .line 1370
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1371
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1376
    :cond_0
    :goto_0
    const v2, 0x7f0d006e

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1377
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1379
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1381
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1383
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1385
    new-instance v1, Lcom/android/camera/ButtonManager$16;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$16;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1400
    new-instance v1, Lcom/android/camera/ButtonManager$17;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$17;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 1408
    return-void

    .line 1373
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1381
    goto :goto_1
.end method

.method private initializeCameraButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;)V
    .locals 7
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;

    .prologue
    const/4 v4, 0x0

    .line 993
    const v1, 0x7f0d0011

    .line 994
    .local v1, "resIdImages":I
    const v2, 0x7f0d0012

    .line 996
    .local v2, "resIdTexts":I
    invoke-interface {p4}, Lcom/android/camera/hardware/HardwareSpec;->isLogicCamInUse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    const v1, 0x7f0d000c

    .line 998
    const v2, 0x7f0d000d

    .line 1001
    :cond_0
    if-lez v1, :cond_1

    .line 1002
    invoke-virtual {p1, v1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    .line 1005
    :cond_1
    invoke-interface {p4}, Lcom/android/camera/hardware/HardwareSpec;->isLogicCamInUse()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0d0009

    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1006
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1008
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "PhotoModule"

    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1010
    .local v0, "index":I
    if-ltz v0, :cond_3

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v4}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1012
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1014
    new-instance v3, Lcom/android/camera/ButtonManager$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/camera/ButtonManager$6;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1037
    return-void

    .line 1005
    :cond_2
    const v3, 0x7f0d0008

    goto :goto_0

    .restart local v0    # "index":I
    :cond_3
    move v0, v4

    .line 1010
    goto :goto_1
.end method

.method private initializeCountdownButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 1204
    if-lez p4, :cond_0

    .line 1205
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1206
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1211
    :cond_0
    :goto_0
    invoke-virtual {p1, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1212
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1214
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_countdown_duration_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1216
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1217
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1218
    new-instance v1, Lcom/android/camera/ButtonManager$11;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$11;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1233
    return-void

    .line 1208
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1216
    goto :goto_1
.end method

.method private initializeDualTwiceShotButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 1457
    if-lez p4, :cond_0

    .line 1458
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1459
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1464
    :cond_0
    :goto_0
    const v2, 0x7f0d002e

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1465
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1467
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_dual_twiceshot_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1469
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1471
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1473
    new-instance v1, Lcom/android/camera/ButtonManager$20;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$20;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1488
    new-instance v1, Lcom/android/camera/ButtonManager$21;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$21;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 1496
    return-void

    .line 1461
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1469
    goto :goto_1
.end method

.method private initializeFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 865
    if-lez p4, :cond_0

    .line 866
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/MultiToggleImageButton;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 872
    :cond_0
    :goto_0
    const v2, 0x7f0d0003

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 873
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 875
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 877
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 879
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 881
    new-instance v1, Lcom/android/camera/ButtonManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$1;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 896
    new-instance v1, Lcom/android/camera/ButtonManager$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$2;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 904
    return-void

    .line 869
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 877
    goto :goto_1
.end method

.method private initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V
    .locals 4
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p5, "resIdImages"    # I
    .param p6, "resIdTexts"    # I
    .param p7, "shouldUpdateValue"    # Z
    .param p8, "needReset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1241
    if-lez p5, :cond_0

    .line 1242
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1243
    invoke-virtual {p1, p5, p6}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1248
    :cond_0
    :goto_0
    invoke-virtual {p1, p6}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1249
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1250
    invoke-virtual {p1, p8}, Lcom/android/camera/MultiToggleImageButton;->setNeedReset(Z)V

    .line 1252
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    invoke-virtual {v2, v3, p2}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1254
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1256
    invoke-direct {p0, p1, p4}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1258
    new-instance v1, Lcom/android/camera/ButtonManager$12;

    invoke-direct {v1, p0, p7, p2, p3}, Lcom/android/camera/ButtonManager$12;-><init>(Lcom/android/camera/ButtonManager;ZLjava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1277
    return-void

    .line 1245
    :cond_1
    invoke-virtual {p1, p5, p6}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1254
    goto :goto_1
.end method

.method private initializeGridLinesButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V
    .locals 4
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I

    .prologue
    .line 1334
    if-lez p4, :cond_0

    .line 1335
    invoke-virtual {p1, p4}, Lcom/android/camera/MultiToggleImageButton;->overrideImageIds(I)V

    .line 1337
    :cond_0
    const v1, 0x7f0d002f

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1338
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1340
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1342
    new-instance v1, Lcom/android/camera/ButtonManager$15;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$15;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1358
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_grid_lines"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1360
    .local v0, "index":I
    if-ltz v0, :cond_1

    .end local v0    # "index":I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1361
    return-void

    .line 1360
    .restart local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeHdrButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 9
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    const v8, 0x7f080435

    const/4 v3, 0x0

    .line 1083
    const v1, 0x7f0d0074

    .line 1084
    .local v1, "resIdImages":I
    const v2, 0x7f0d0076

    .line 1085
    .local v2, "resIdTexts":I
    iget-boolean v4, p4, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableAutoHdr:Z

    if-nez v4, :cond_1

    .line 1086
    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "pref_camera_hdr_key"

    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1087
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080312

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1088
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0087

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1086
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1090
    const v1, 0x7f0d0088

    .line 1091
    const v2, 0x7f0d0092

    .line 1099
    :cond_0
    :goto_0
    iget-boolean v4, p4, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableAutoHdr:Z

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/android/camera/ButtonManager;->initializeHdrButtonIcons(Lcom/android/camera/MultiToggleImageButton;IIZ)V

    .line 1101
    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "default_scope"

    const-string v6, "pref_camera_hdr_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1103
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v3}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1105
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1107
    new-instance v3, Lcom/android/camera/ButtonManager$8;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/ButtonManager$8;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v3}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1121
    return-void

    .line 1092
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "default_scope"

    const-string v6, "pref_camera_hdr_key"

    iget-object v7, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1093
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->isPossibleValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1094
    iget-object v4, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "pref_camera_hdr_key"

    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1095
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1096
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1094
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v3

    .line 1103
    goto :goto_1
.end method

.method private initializeHdrButtonIcons(Lcom/android/camera/MultiToggleImageButton;IIZ)V
    .locals 1
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "resIdImages"    # I
    .param p3, "resIdTexts"    # I
    .param p4, "enableAutoHdr"    # Z

    .prologue
    .line 1124
    if-lez p2, :cond_0

    .line 1125
    iget-boolean v0, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v0, :cond_1

    .line 1126
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1131
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    const v0, 0x7f0d0001

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1133
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .line 1131
    :cond_2
    const v0, 0x7f0d0032

    goto :goto_1
.end method

.method private initializeHdrPlusButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I

    .prologue
    const/4 v1, 0x0

    .line 1045
    invoke-direct {p0, p1, p4}, Lcom/android/camera/ButtonManager;->initializeHdrPlusButtonIcons(Lcom/android/camera/MultiToggleImageButton;I)V

    .line 1047
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_hdr_plus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1049
    .local v0, "index":I
    if-ltz v0, :cond_0

    .end local v0    # "index":I
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1051
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1053
    new-instance v1, Lcom/android/camera/ButtonManager$7;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$7;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1068
    return-void

    .restart local v0    # "index":I
    :cond_0
    move v0, v1

    .line 1049
    goto :goto_0
.end method

.method private initializeHdrPlusButtonIcons(Lcom/android/camera/MultiToggleImageButton;I)V
    .locals 1
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "resIdImages"    # I

    .prologue
    .line 1071
    if-lez p2, :cond_0

    .line 1072
    invoke-virtual {p1, p2}, Lcom/android/camera/MultiToggleImageButton;->overrideImageIds(I)V

    .line 1074
    :cond_0
    const v0, 0x7f0d0033

    invoke-virtual {p1, v0}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1076
    return-void
.end method

.method private initializeHdrPlusFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I

    .prologue
    const/4 v1, 0x0

    .line 959
    if-lez p4, :cond_0

    .line 960
    invoke-virtual {p1, p4}, Lcom/android/camera/MultiToggleImageButton;->overrideImageIds(I)V

    .line 962
    :cond_0
    const v2, 0x7f0d0034

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 963
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 965
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_hdr_plus_flash_mode"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 967
    .local v0, "index":I
    if-ltz v0, :cond_1

    .end local v0    # "index":I
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 969
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 971
    new-instance v1, Lcom/android/camera/ButtonManager$5;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$5;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 985
    return-void

    .restart local v0    # "index":I
    :cond_1
    move v0, v1

    .line 967
    goto :goto_0
.end method

.method private initializeMotionButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 1286
    if-lez p4, :cond_0

    .line 1287
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1288
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1293
    :cond_0
    :goto_0
    const v2, 0x7f0d0067

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1294
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1296
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_motion"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1298
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1300
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1302
    new-instance v1, Lcom/android/camera/ButtonManager$13;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$13;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1317
    new-instance v1, Lcom/android/camera/ButtonManager$14;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$14;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 1325
    return-void

    .line 1290
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1298
    goto :goto_1
.end method

.method private initializeSoundFocusButtonIcons(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;)V
    .locals 11
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 1138
    const v2, 0x7f0d00da

    .line 1139
    .local v2, "resIdImages":I
    const v1, 0x7f0d00d8

    .line 1140
    .local v1, "resIdDescription":I
    const v3, 0x7f0d00db

    .line 1142
    .local v3, "resIdTexts":I
    invoke-interface {p4}, Lcom/android/camera/hardware/HardwareSpec;->isSingleSurroundSoundOnly()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1143
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "pref_sound_focus_key"

    iget-object v8, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1144
    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080416

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 1145
    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00d5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1143
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1147
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "default_scope"

    const-string v8, "pref_sound_focus_key"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1148
    .local v4, "soundFocus":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "default_scope"

    const-string v8, "pref_sound_focus_key"

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/camera/settings/SettingsManager;->isPossibleValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1149
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "default_scope"

    const-string v8, "pref_sound_focus_key"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_0
    const v2, 0x7f0d00d6

    .line 1152
    const v1, 0x7f0d00d4

    .line 1153
    const v3, 0x7f0d00d7

    .line 1156
    .end local v4    # "soundFocus":Ljava/lang/String;
    :cond_1
    if-lez v2, :cond_2

    .line 1157
    iget-boolean v6, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v6, :cond_3

    .line 1158
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1164
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1165
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1166
    invoke-virtual {p1, v5}, Lcom/android/camera/MultiToggleImageButton;->setNeedReset(Z)V

    .line 1168
    iget-object v6, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v7, "default_scope"

    const-string v8, "pref_sound_focus_key"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1169
    .local v0, "index":I
    if-ltz v0, :cond_4

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v5}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1171
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1173
    new-instance v5, Lcom/android/camera/ButtonManager$9;

    invoke-direct {v5, p0, p2}, Lcom/android/camera/ButtonManager$9;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v5}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1189
    new-instance v5, Lcom/android/camera/ButtonManager$10;

    invoke-direct {v5, p0, p2}, Lcom/android/camera/ButtonManager$10;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v5}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 1197
    return-void

    .line 1160
    :cond_3
    invoke-virtual {p1, v2, v3}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_4
    move v0, v5

    .line 1169
    goto :goto_1
.end method

.method private initializeSuperResolutionButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 1413
    if-lez p4, :cond_0

    .line 1414
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    .line 1415
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 1420
    :cond_0
    :goto_0
    const v2, 0x7f0d00dc

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 1421
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 1423
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_sr_control_boolean_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1425
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 1427
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 1429
    new-instance v1, Lcom/android/camera/ButtonManager$18;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$18;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1444
    new-instance v1, Lcom/android/camera/ButtonManager$19;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$19;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 1452
    return-void

    .line 1417
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 1425
    goto :goto_1
.end method

.method private initializeTorchButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V
    .locals 5
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "resIdImages"    # I
    .param p5, "resIdTexts"    # I

    .prologue
    const/4 v1, 0x0

    .line 912
    if-lez p4, :cond_0

    .line 913
    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/MultiToggleImageButton;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 914
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItemsWithAnim(II)V

    .line 919
    :cond_0
    :goto_0
    const v2, 0x7f0d00e2

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->overrideContentDescriptions(I)V

    .line 920
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mModeOptionsExpandRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/MultiToggleImageButton;->setExpandView(Landroid/view/ViewGroup;)V

    .line 922
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 924
    .local v0, "index":I
    if-ltz v0, :cond_2

    .end local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 926
    invoke-direct {p0, p1, p3}, Lcom/android/camera/ButtonManager;->setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    .line 928
    new-instance v1, Lcom/android/camera/ButtonManager$3;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$3;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnStateChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 943
    new-instance v1, Lcom/android/camera/ButtonManager$4;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ButtonManager$4;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/MultiToggleImageButton;->setOnClickListener(Lcom/android/camera/MultiToggleImageButton$OnButtonClickListener;)V

    .line 951
    return-void

    .line 916
    :cond_1
    invoke-virtual {p1, p4, p5}, Lcom/android/camera/MultiToggleImageButton;->overrideModeOptionItems(II)V

    goto :goto_0

    .restart local v0    # "index":I
    :cond_2
    move v0, v1

    .line 924
    goto :goto_1
.end method

.method private setPreChangeCallback(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;)V
    .locals 1
    .param p1, "button"    # Lcom/android/camera/MultiToggleImageButton;
    .param p2, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;

    .prologue
    .line 1504
    new-instance v0, Lcom/android/camera/ButtonManager$22;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ButtonManager$22;-><init>(Lcom/android/camera/ButtonManager;Lcom/android/camera/ButtonManager$ButtonCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/MultiToggleImageButton;->setOnPreChangeListener(Lcom/android/camera/MultiToggleImageButton$OnStateChangeListener;)V

    .line 1518
    return-void
.end method

.method private static setVisible(Landroid/view/View;Z)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 813
    if-eqz p1, :cond_0

    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIconAlphaAnim(Ljava/util/List;ZZ)V
    .locals 4
    .param p1, "iconList"    # Ljava/util/List;
    .param p2, "hidden"    # Z
    .param p3, "isHideFlash"    # Z

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1618
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ButtonManager$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ButtonManager$23;-><init>(Lcom/android/camera/ButtonManager;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1641
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1642
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ButtonManager$24;

    invoke-direct {v1, p0}, Lcom/android/camera/ButtonManager$24;-><init>(Lcom/android/camera/ButtonManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1664
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mShowAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1665
    return-void

    .line 1618
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public disableButton(I)V
    .locals 9
    .param p1, "buttonId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 634
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 635
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 645
    .local v6, "button":Landroid/view/View;
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    move-object v0, v6

    .line 646
    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    const v1, 0x7f0d008e

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ButtonManager;->initializeHdrPlusButtonIcons(Lcom/android/camera/MultiToggleImageButton;I)V

    .line 655
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v7

    .line 656
    .local v7, "isEnabled":Z
    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 657
    if-eqz v7, :cond_2

    .line 658
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonEnabledChanged(Lcom/android/camera/ButtonManager;I)V

    .line 662
    :cond_2
    const v0, 0x7f080447

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/camera/ButtonManager;->hideButton(I)V

    .line 665
    return-void

    .line 637
    .end local v6    # "button":Landroid/view/View;
    .end local v7    # "isEnabled":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v6

    .restart local v6    # "button":Landroid/view/View;
    goto :goto_0

    .line 647
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    move-object v0, v6

    .line 648
    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    const v1, 0x7f0d0088

    const v3, 0x7f0d0092

    invoke-direct {p0, v0, v1, v3, v8}, Lcom/android/camera/ButtonManager;->initializeHdrButtonIcons(Lcom/android/camera/MultiToggleImageButton;IIZ)V

    goto :goto_1

    .line 649
    :cond_5
    if-nez p1, :cond_6

    move-object v1, v6

    .line 650
    check-cast v1, Lcom/android/camera/MultiToggleImageButton;

    const v4, 0x7f0d0004

    const v5, 0x7f0d0007

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto :goto_1

    .line 651
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move-object v1, v6

    .line 652
    check-cast v1, Lcom/android/camera/MultiToggleImageButton;

    const v4, 0x7f0d00e3

    const v5, 0x7f0d00e6

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeTorchButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto :goto_1
.end method

.method public disableButtonClick(I)V
    .locals 4
    .param p1, "buttonId"    # I

    .prologue
    const/4 v3, 0x0

    .line 715
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 719
    .local v0, "button":Landroid/view/View;
    :goto_0
    instance-of v2, v0, Lcom/android/camera/MultiToggleImageButton;

    if-eqz v2, :cond_0

    .line 720
    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    .end local v0    # "button":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/android/camera/MultiToggleImageButton;->setClickEnabled(Z)V

    .line 724
    :goto_1
    return-void

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0

    .line 722
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public disableCameraButtonAndBlock()V
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ButtonManager;->mIsCameraButtonBlocked:Z

    .line 626
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/ButtonManager;->disableButton(I)V

    .line 627
    return-void
.end method

.method public enableButton(I)V
    .locals 4
    .param p1, "buttonId"    # I

    .prologue
    .line 681
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ButtonManager;->mIsCameraButtonBlocked:Z

    if-eqz v2, :cond_0

    .line 705
    :goto_0
    return-void

    .line 689
    :cond_0
    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    const/16 v2, 0x11

    if-eq p1, v2, :cond_1

    const/16 v2, 0x13

    if-eq p1, v2, :cond_1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 690
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 698
    .local v0, "button":Landroid/widget/ImageView;
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 699
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 700
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v2, :cond_2

    .line 701
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v2, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonEnabledChanged(Lcom/android/camera/ButtonManager;I)V

    .line 704
    :cond_2
    const v2, 0x7f080447

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 692
    .end local v0    # "button":Landroid/widget/ImageView;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "button":Landroid/widget/ImageView;
    goto :goto_1

    .line 694
    .end local v0    # "button":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableButtonClick(I)V
    .locals 4
    .param p1, "buttonId"    # I

    .prologue
    const/4 v3, 0x1

    .line 734
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 738
    .local v0, "button":Landroid/view/View;
    :goto_0
    instance-of v2, v0, Lcom/android/camera/MultiToggleImageButton;

    if-eqz v2, :cond_0

    .line 739
    check-cast v0, Lcom/android/camera/MultiToggleImageButton;

    .end local v0    # "button":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/android/camera/MultiToggleImageButton;->setClickEnabled(Z)V

    .line 743
    :goto_1
    return-void

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0

    .line 741
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public enableCameraButton()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ButtonManager;->mIsCameraButtonBlocked:Z

    .line 673
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 674
    return-void
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/android/camera/ButtonManager;->mExposureCompensationStep:F

    return v0
.end method

.method public hideButton(I)V
    .locals 5
    .param p1, "buttonId"    # I

    .prologue
    const/16 v4, 0x8

    .line 751
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 755
    .local v0, "button":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 756
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v3, :cond_0

    .line 758
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v3, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonVisibilityChanged(Lcom/android/camera/ButtonManager;I)V

    .line 761
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ButtonManager;->getSpaceOfButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 762
    .local v2, "space":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :cond_1
    return-void

    .line 752
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "space":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0
.end method

.method public hideButtonWithAnim(Ljava/util/List;ZZ)V
    .locals 0
    .param p1, "iconList"    # Ljava/util/List;
    .param p2, "hidden"    # Z
    .param p3, "isHideFlash"    # Z

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1614
    :goto_0
    return-void

    .line 1609
    :cond_0
    if-eqz p2, :cond_1

    .line 1610
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ButtonManager;->hideIconAlphaAnim(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 1612
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ButtonManager;->showIconAlphaAnim(Ljava/util/List;ZZ)V

    goto :goto_0
.end method

.method public hideModeOptions()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptions;->setVisibility(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 10
    .param p1, "buttonId"    # I
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "preCb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p4, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p5, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    const v4, 0x7f0d0004

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 499
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v1

    .line 500
    .local v1, "button":Lcom/android/camera/MultiToggleImageButton;
    packed-switch p1, :pswitch_data_0

    .line 560
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button not known by id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_1
    const v5, 0x7f0d0007

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    .line 563
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ButtonManager;->showButton(I)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/camera/ButtonManager;->enableButton(I)V

    .line 565
    return-void

    .line 505
    :pswitch_2
    const v4, 0x7f0d00e3

    const v5, 0x7f0d00e6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeTorchButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto :goto_0

    .line 508
    :pswitch_3
    invoke-direct {p0, v1, p2, p3, v4}, Lcom/android/camera/ButtonManager;->initializeHdrPlusFlashButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V

    goto :goto_0

    .line 511
    :pswitch_4
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/camera/ButtonManager;->initializeCameraButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;)V

    goto :goto_0

    .line 514
    :pswitch_5
    const v0, 0x7f0d008e

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/android/camera/ButtonManager;->initializeHdrPlusButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;I)V

    goto :goto_0

    .line 517
    :pswitch_6
    invoke-direct {p0, v1, p2, p3, p5}, Lcom/android/camera/ButtonManager;->initializeHdrButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    goto :goto_0

    .line 520
    :pswitch_7
    const v4, 0x7f0d0025

    const v5, 0x7f0d0026

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeCountdownButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto :goto_0

    .line 523
    :pswitch_8
    const-string v2, "pref_camera_screen_key"

    const v5, 0x7f0d0022

    const v6, 0x7f0d0023

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V

    goto :goto_0

    .line 526
    :pswitch_9
    const-string v2, "pref_dual_cam_controller_key"

    const v5, 0x7f0d0027

    const v6, 0x7f0d007a

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V

    goto :goto_0

    .line 529
    :pswitch_a
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/camera/ButtonManager;->initializeSoundFocusButtonIcons(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;)V

    goto :goto_0

    .line 532
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v9

    .line 533
    .local v9, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    invoke-virtual {v9}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isWWVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string v2, "pref_live_broadcast_choose_key"

    const v5, 0x7f0d003a

    const v6, 0x7f0d003b

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v9}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isCNVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    const-string v2, "pref_live_broadcast_choose_key"

    const v5, 0x7f0d0036

    const v6, 0x7f0d0037

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V

    goto/16 :goto_0

    .line 542
    :cond_1
    const-string v2, "pref_live_broadcast_choose_key"

    const v5, 0x7f0d0038

    const v6, 0x7f0d0039

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ButtonManager;->initializeGlobalIndicatorButton(Lcom/android/camera/MultiToggleImageButton;Ljava/lang/String;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;IIZZ)V

    goto/16 :goto_0

    .line 548
    .end local v9    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :pswitch_c
    const v4, 0x7f0d0068

    const v5, 0x7f0d0069

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeMotionButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto/16 :goto_0

    .line 551
    :pswitch_d
    const v4, 0x7f0d0071

    const v5, 0x7f0d006f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeBeautyButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto/16 :goto_0

    .line 554
    :pswitch_e
    const v4, 0x7f0d00dd

    const v5, 0x7f0d00de

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeSuperResolutionButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto/16 :goto_0

    .line 557
    :pswitch_f
    const v4, 0x7f0d002c

    const v5, 0x7f0d002d

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeDualTwiceShotButton(Lcom/android/camera/MultiToggleImageButton;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;II)V

    goto/16 :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 6
    .param p1, "buttonId"    # I
    .param p2, "cb"    # Lcom/android/camera/ButtonManager$ButtonCallback;
    .param p3, "hardwareSpec"    # Lcom/android/camera/hardware/HardwareSpec;
    .param p4, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    .line 487
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializeButton(ILcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/ButtonManager$ButtonCallback;Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V

    .line 488
    return-void
.end method

.method public initializePushButton(ILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "buttonId"    # I
    .param p2, "cb"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, -0x1

    .line 616
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IIZ)V

    .line 617
    return-void
.end method

.method public initializePushButton(ILandroid/view/View$OnClickListener;IIZ)V
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "cb"    # Landroid/view/View$OnClickListener;
    .param p3, "imageId"    # I
    .param p4, "contentDescriptionId"    # I
    .param p5, "isNeedAnim"    # Z

    .prologue
    const/4 v2, -0x1

    .line 574
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 575
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    if-eq p3, v2, :cond_1

    .line 577
    if-eqz p5, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    if-eqz v1, :cond_0

    .line 580
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    :cond_1
    if-eq p4, v2, :cond_2

    .line 583
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    .line 584
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 587
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 588
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 589
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v1, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonEnabledChanged(Lcom/android/camera/ButtonManager;I)V

    .line 593
    :cond_3
    const v1, 0x7f080447

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v1, :cond_4

    .line 598
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v1, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonVisibilityChanged(Lcom/android/camera/ButtonManager;I)V

    .line 601
    :cond_4
    return-void
.end method

.method public initializePushButton(ILandroid/view/View$OnClickListener;IZ)V
    .locals 6
    .param p1, "buttonId"    # I
    .param p2, "cb"    # Landroid/view/View$OnClickListener;
    .param p3, "imageId"    # I
    .param p4, "isNeedAnim"    # Z

    .prologue
    .line 609
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;IIZ)V

    .line 610
    return-void
.end method

.method public invisibleButton(I)V
    .locals 5
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x4

    .line 771
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 775
    .local v0, "button":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 776
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v3, :cond_0

    .line 778
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v3, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonVisibilityChanged(Lcom/android/camera/ButtonManager;I)V

    .line 781
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ButtonManager;->getSpaceOfButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 782
    .local v2, "space":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 783
    :cond_1
    return-void

    .line 772
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "space":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "buttonId"    # I

    .prologue
    const/4 v3, 0x0

    .line 833
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 838
    .local v0, "button":Landroid/view/View;
    :goto_0
    const v4, 0x7f080447

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 839
    .local v2, "enabledId":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 840
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 842
    :cond_0
    return v3

    .line 834
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "enabledId":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0
.end method

.method public isPanoEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1500
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v1}, Lcom/android/camera/widget/ModeOptions;->getMainBar()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible(I)Z
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 852
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 856
    .local v0, "button":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 853
    .end local v0    # "button":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 854
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0

    .line 856
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public load(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonsReferences(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "button":Lcom/android/camera/MultiToggleImageButton;
    const/4 v1, 0x0

    .line 272
    .local v1, "index":I
    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 275
    invoke-direct {p0, v5}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/MultiToggleImageButton;->getState()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 330
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/MultiToggleImageButton;->setState(IZ)V

    .line 332
    :cond_1
    return-void

    .line 276
    :cond_2
    const-string v2, "pref_camera_video_flashmode_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 279
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_3
    const-string v2, "pref_hdr_plus_flash_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_hdr_plus_flash_mode"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 283
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_4
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 287
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_5
    const-string v2, "pref_camera_hdr_plus_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_hdr_plus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 291
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_6
    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_hdr_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 295
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :cond_7
    const-string v2, "pref_camera_countdown_duration_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 297
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_countdown_duration_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 299
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :cond_8
    const-string v2, "pref_camera_screen_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 301
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_camera_screen_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 303
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 304
    :cond_9
    const-string v2, "pref_dual_camera_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 305
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_dual_camera_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 307
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :cond_a
    const-string v2, "pref_sound_focus_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 309
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_sound_focus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 311
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :cond_b
    const-string v2, "pref_live_broadcast_choose_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 313
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_live_broadcast_choose_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 315
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :cond_c
    const-string v2, "pref_motion"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 317
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_motion"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 319
    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :cond_d
    const-string v2, "pref_sr_control_boolean_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 321
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_sr_control_boolean_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 323
    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :cond_e
    const-string v2, "pref_dual_twiceshot_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/camera/ButtonManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_dual_twiceshot_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 327
    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public refreshVisibilityOfBtnAndSpace()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 1534
    iget-object v11, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_7

    .line 1535
    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mModeOptionsButtons:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1536
    .local v1, "container":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 1537
    .local v7, "spaceMenu":Landroid/view/View;
    const/4 v6, 0x0

    .line 1538
    .local v6, "spaceLastVisible":Landroid/view/View;
    const/4 v3, 0x1

    .line 1539
    .local v3, "isMenuVisible":Z
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1540
    .local v0, "childCount":I
    const/4 v10, 0x0

    .line 1543
    .local v10, "visibleCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 1545
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1546
    .local v8, "viewIcon":Landroid/view/View;
    instance-of v11, v8, Lcom/android/camera/ui/RotateImageView;

    if-eqz v11, :cond_0

    .line 1547
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    move v4, v14

    .line 1548
    .local v4, "isViewVisible":Z
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 1549
    .local v5, "nextIndex":I
    if-ge v5, v0, :cond_0

    .line 1551
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1552
    .local v9, "viewSpace":Landroid/view/View;
    instance-of v11, v9, Landroid/widget/Space;

    if-eqz v11, :cond_0

    .line 1553
    if-nez v2, :cond_2

    .line 1555
    move-object v7, v9

    .line 1556
    move v3, v4

    .line 1543
    .end local v4    # "isViewVisible":Z
    .end local v5    # "nextIndex":I
    .end local v9    # "viewSpace":Landroid/view/View;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v12

    .line 1547
    goto :goto_1

    .line 1558
    .restart local v4    # "isViewVisible":Z
    .restart local v5    # "nextIndex":I
    .restart local v9    # "viewSpace":Landroid/view/View;
    :cond_2
    if-eqz v4, :cond_3

    .line 1560
    move-object v6, v9

    .line 1561
    add-int/lit8 v10, v10, 0x1

    .line 1564
    :cond_3
    if-eqz v4, :cond_4

    move v11, v12

    :goto_3
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v11, v13

    goto :goto_3

    .line 1571
    .end local v4    # "isViewVisible":Z
    .end local v5    # "nextIndex":I
    .end local v8    # "viewIcon":Landroid/view/View;
    .end local v9    # "viewSpace":Landroid/view/View;
    :cond_5
    if-eqz v6, :cond_6

    .line 1572
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    :cond_6
    if-nez v3, :cond_8

    if-le v10, v14, :cond_8

    .line 1579
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    .end local v0    # "childCount":I
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "i":I
    .end local v3    # "isMenuVisible":Z
    .end local v6    # "spaceLastVisible":Landroid/view/View;
    .end local v7    # "spaceMenu":Landroid/view/View;
    .end local v10    # "visibleCount":I
    :cond_7
    :goto_4
    return-void

    .line 1581
    .restart local v0    # "childCount":I
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    .restart local v2    # "i":I
    .restart local v3    # "isMenuVisible":Z
    .restart local v6    # "spaceLastVisible":Landroid/view/View;
    .restart local v7    # "spaceMenu":Landroid/view/View;
    .restart local v10    # "visibleCount":I
    :cond_8
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public setIsToggleBtnNeedAnim(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 1603
    iput-boolean p1, p0, Lcom/android/camera/ButtonManager;->mIsToggleBtnNeedAnim:Z

    .line 1604
    return-void
.end method

.method public setListener(Lcom/android/camera/ButtonManager$ButtonStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ButtonManager$ButtonStatusListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    .line 209
    return-void
.end method

.method public setMainBarByModeOverlay(Z)V
    .locals 2
    .param p1, "isExpand"    # Z

    .prologue
    .line 1521
    if-eqz p1, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptions;->setMainBarVisibility(I)V

    .line 1526
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptions;->setMainBarVisibility(I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCamera:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonFlash:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonHdr:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCountdown:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonTwiceShot:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDualCamSwitcher:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSoundFocus:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonLiveBroadcast:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonEffectChoose:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonModeSettings:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancelContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCancelContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 180
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDoneContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonDoneContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetakeContainer:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonRetakeContainer:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonGoogleLens:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonMotion:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 184
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonBeauty:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 185
    :cond_10
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonSuperResolution:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/MultiToggleImageButton;->setOrientation(IZ)V

    .line 186
    :cond_11
    return-void
.end method

.method public setToInitialState()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptions;->setMainBar(I)V

    .line 810
    :cond_0
    return-void
.end method

.method public showButton(I)V
    .locals 5
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 791
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getButtonOrError(I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 795
    .local v0, "button":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    if-eqz v3, :cond_0

    .line 798
    iget-object v3, p0, Lcom/android/camera/ButtonManager;->mListener:Lcom/android/camera/ButtonManager$ButtonStatusListener;

    invoke-interface {v3, p0, p1}, Lcom/android/camera/ButtonManager$ButtonStatusListener;->onButtonVisibilityChanged(Lcom/android/camera/ButtonManager;I)V

    .line 802
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ButtonManager;->getSpaceOfButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 803
    .local v2, "space":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 805
    :cond_1
    return-void

    .line 792
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "space":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lcom/android/camera/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "button":Landroid/view/View;
    goto :goto_0
.end method

.method public showModeOptions()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mModeOptions:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ModeOptions;->setVisibility(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public syncButtonState()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    iget-object v1, p0, Lcom/android/camera/ButtonManager;->mButtonCameraScreen:Lcom/android/camera/MultiToggleImageButton;

    invoke-virtual {v1}, Lcom/android/camera/MultiToggleImageButton;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/MultiToggleImageButton;->setState(I)V

    .line 1531
    :cond_0
    return-void
.end method
