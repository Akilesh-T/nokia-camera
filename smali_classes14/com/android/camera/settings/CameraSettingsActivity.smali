.class public Lcom/android/camera/settings/CameraSettingsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    }
.end annotation


# static fields
.field public static final HIDE_ADVANCED_SCREEN:Ljava/lang/String; = "hide_advanced"

.field public static final HIDE_ZSL_OPTION:Ljava/lang/String; = "hide_zsl"

.field public static final IS_SECURE_CAMERA:Ljava/lang/String; = "secure_camera"

.field private static final PERMISSION_GET_ACCOUNT_REQUEST_CODE:I = 0x1002

.field private static final PERMISSION_REQUEST:I = 0x1000

.field private static final PERMISSION_REQUEST_AGAIN:I = 0x1001

.field public static final PREF_SCREEN_EXTRA:Ljava/lang/String; = "pref_screen_extra"

.field public static final PREF_SCREEN_TITLE_EXTRA:Ljava/lang/String; = "pref_screen_title_extra"

.field public static final PREF_SUMMARY_VISIBLE_EXTRA:Ljava/lang/String; = "pref_summary_visible_extra"

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x1003

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;


# instance fields
.field private mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

.field public mSecureMode:Z

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mShowingDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SettingsActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 125
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCode;

    const/16 v1, 0x1000

    const/16 v2, 0x1001

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;-><init>(III)V

    sput-object v0, Lcom/android/camera/settings/CameraSettingsActivity;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShowingDialogList:Ljava/util/List;

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSecureMode:Z

    .line 140
    new-instance v0, Lcom/android/camera/settings/CameraSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/settings/CameraSettingsActivity$1;-><init>(Lcom/android/camera/settings/CameraSettingsActivity;)V

    iput-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/util/PermissionUtil$PermissionCode;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/camera/settings/CameraSettingsActivity;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 310
    sget-object v1, Lcom/android/camera/settings/CameraSettingsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult - requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onActivityResult(IILandroid/content/Intent;)Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v0

    .line 315
    .local v0, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    new-instance v7, Lcom/android/camera/FatalErrorHandlerImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1}, Lcom/android/camera/FatalErrorHandlerImpl;-><init>(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;)V

    .line 152
    .local v7, "fatalErrorHandler":Lcom/android/camera/FatalErrorHandler;
    const/4 v11, 0x0

    .line 153
    .local v11, "hideAdvancedScreen":Z
    const/4 v12, 0x0

    .line 156
    .local v12, "hideZSLOption":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/one/OneCameraModule;->provideOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface/range {v21 .. v22}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v10

    .line 167
    .local v10, "frontCameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface/range {v21 .. v22}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v3

    .line 172
    .local v3, "backCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    .line 173
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v21

    .line 174
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v14, 0x1

    .line 175
    .local v14, "isExposureCompensationSupportedByFrontCamera":Z
    :goto_1
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    .line 176
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v21

    .line 177
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v13, 0x1

    .line 182
    .local v13, "isExposureCompensationSupportedByBackCamera":Z
    :goto_2
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    .line 183
    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v21

    .line 184
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->isZSLSupported()Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v16, 0x1

    .line 185
    .local v16, "isZSLSupportedByFrontCamera":Z
    :goto_3
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mOneCameraManager:Lcom/android/camera/one/OneCameraManager;

    move-object/from16 v21, v0

    .line 186
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v21

    .line 187
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/one/OneCameraCharacteristics;->isZSLSupported()Z
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    if-eqz v21, :cond_7

    const/4 v15, 0x1

    .line 190
    .local v15, "isZSLSupportedByBackCamera":Z
    :goto_4
    if-nez v14, :cond_8

    if-nez v13, :cond_8

    if-nez v16, :cond_8

    if-nez v15, :cond_8

    .line 194
    const/4 v11, 0x1

    .line 204
    .end local v3    # "backCameraId":Lcom/android/camera/device/CameraId;
    .end local v10    # "frontCameraId":Lcom/android/camera/device/CameraId;
    .end local v13    # "isExposureCompensationSupportedByBackCamera":Z
    .end local v14    # "isExposureCompensationSupportedByFrontCamera":Z
    .end local v15    # "isZSLSupportedByBackCamera":Z
    .end local v16    # "isZSLSupportedByFrontCamera":Z
    :cond_0
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 205
    .local v2, "actionBar":Landroid/app/ActionBar;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "pref_screen_title_extra"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 208
    .local v18, "prefTitle":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 209
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    if-eqz v21, :cond_1

    const-string v21, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 217
    .local v19, "win":Landroid/view/Window;
    const/high16 v21, 0x80000

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 221
    new-instance v8, Landroid/content/IntentFilter;

    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    .local v8, "filter_screen_off":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/settings/CameraSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    new-instance v9, Landroid/content/IntentFilter;

    const-string v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, "filter_user_unlock":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/settings/CameraSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/settings/CameraSettingsActivity;->mSecureMode:Z

    .line 234
    .end local v8    # "filter_screen_off":Landroid/content/IntentFilter;
    .end local v9    # "filter_user_unlock":Landroid/content/IntentFilter;
    .end local v19    # "win":Landroid/view/Window;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/camera/util/ProductModelUtil;->hasNotchFeature(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x400

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->clearFlags(I)V

    .line 240
    :cond_2
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x1a

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    .line 242
    .local v20, "window":Landroid/view/Window;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0e00b3

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 245
    .end local v20    # "window":Landroid/view/Window;
    :cond_3
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/settings/CameraSettingsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    move-object/from16 v21, v0

    const-string v22, "default_scope"

    const-string v23, "pref_settings_description_enable_key"

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "pref_screen_extra"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, "prefKey":Ljava/lang/String;
    new-instance v5, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {v5}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;-><init>()V

    .line 249
    .local v5, "dialog":Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    new-instance v4, Landroid/os/Bundle;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 250
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v21, "pref_screen_extra"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v21, "hide_advanced"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v21, "secure_camera"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mSecureMode:Z

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    const-string v21, "hide_zsl"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const-string v21, "pref_summary_visible_extra"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {v5, v4}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v21

    const v22, 0x1020002

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/FragmentTransaction;->commit()I

    .line 257
    return-void

    .line 157
    .end local v2    # "actionBar":Landroid/app/ActionBar;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "dialog":Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    .end local v17    # "prefKey":Ljava/lang/String;
    .end local v18    # "prefTitle":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Lcom/android/camera/one/OneCameraException;
    invoke-interface {v7}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 174
    .end local v6    # "e":Lcom/android/camera/one/OneCameraException;
    .restart local v3    # "backCameraId":Lcom/android/camera/device/CameraId;
    .restart local v10    # "frontCameraId":Lcom/android/camera/device/CameraId;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 177
    .restart local v14    # "isExposureCompensationSupportedByFrontCamera":Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 184
    .restart local v13    # "isExposureCompensationSupportedByBackCamera":Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 187
    .restart local v16    # "isZSLSupportedByFrontCamera":Z
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 195
    .restart local v15    # "isZSLSupportedByBackCamera":Z
    :cond_8
    if-nez v16, :cond_0

    if-nez v15, :cond_0

    .line 197
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 200
    .end local v3    # "backCameraId":Lcom/android/camera/device/CameraId;
    .end local v10    # "frontCameraId":Lcom/android/camera/device/CameraId;
    .end local v13    # "isExposureCompensationSupportedByBackCamera":Z
    .end local v14    # "isExposureCompensationSupportedByFrontCamera":Z
    .end local v15    # "isZSLSupportedByBackCamera":Z
    .end local v16    # "isZSLSupportedByFrontCamera":Z
    :catch_1
    move-exception v6

    .line 201
    .local v6, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-interface {v7}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_5

    .line 211
    .end local v6    # "e":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v2    # "actionBar":Landroid/app/ActionBar;
    .restart local v18    # "prefTitle":Ljava/lang/String;
    :cond_9
    const v21, 0x7f0800f9

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pref_screen_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "prefKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 287
    :goto_0
    return v2

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 286
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f100003

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSecureMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 274
    return-void
.end method

.method public onDialogShowed(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1480
    if-nez p1, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 292
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 293
    .local v1, "itemId":I
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity;->finish()V

    .line 305
    :cond_0
    :goto_0
    return v3

    .line 296
    :cond_1
    const v2, 0x7f0f024c

    if-ne v1, v2, :cond_0

    .line 297
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    .line 298
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0201ba

    :goto_2
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    .line 301
    .local v0, "fragment":Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    iget-boolean v2, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    invoke-virtual {v0, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->setSummaryVisible(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "pref_settings_description_enable_key"

    iget-boolean v6, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mSummaryVisible:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 297
    .end local v0    # "fragment":Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 298
    :cond_3
    const v2, 0x7f0201b9

    goto :goto_2
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 262
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 266
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mShowingDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 267
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 268
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 323
    sget-object v2, Lcom/android/camera/settings/CameraSettingsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult - requestCode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", permissions : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    array-length v0, p2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", grantResults : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    array-length v1, p3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 327
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public setAccountType(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V
    .locals 0
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 130
    return-void
.end method

.method public setRequestAccountPermission(Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)V
    .locals 0
    .param p1, "requestAccountPermission"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .line 134
    return-void
.end method
