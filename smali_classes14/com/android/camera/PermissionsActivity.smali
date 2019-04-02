.class public Lcom/android/camera/PermissionsActivity;
.super Lcom/android/camera/util/QuickActivity;
.source "PermissionsActivity.java"


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final ON_RESUME_DELAY_MILLIS:I = 0x32

.field private static final PERMISSION_LIST:[Ljava/lang/String;

.field private static final PERMISSION_MUST_LIST:[Ljava/lang/String;

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final PERMISSION_REQUEST:I

.field private final PERMISSION_REQUEST_AGAIN:I

.field private final PERMISSION_REQUEST_CODE:I

.field private mIsCaptureIntent:Z

.field private mIsCheckDialogNotShow:Z

.field private mPermissionFailDialog:Landroid/app/AlertDialog;

.field private mSecureCamera:Z

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mUserAgreementDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PermissionsActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PermissionsActivity;->PERMISSION_LIST:[Ljava/lang/String;

    .line 54
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/PermissionsActivity;->PERMISSION_MUST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/android/camera/util/QuickActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_AGAIN:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/PermissionsActivity;->PERMISSION_REQUEST_CODE:I

    .line 71
    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    .line 86
    new-instance v0, Lcom/android/camera/PermissionsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PermissionsActivity$1;-><init>(Lcom/android/camera/PermissionsActivity;)V

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PermissionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mIsCheckDialogNotShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/PermissionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/PermissionsActivity;->mIsCheckDialogNotShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/PermissionsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mUserAgreementDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PermissionsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity;->mUserAgreementDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/PermissionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/PermissionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/PermissionsActivity;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->dismiss()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkPermissions()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V

    return-void
.end method

.method private buildPermissionsRequest(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "lstRequest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 263
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v2, 0x7f08012d

    invoke-virtual {p0, v2}, Lcom/android/camera/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080127

    invoke-virtual {p0, v3}, Lcom/android/camera/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PermissionsActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/PermissionsActivity$4;-><init>(Lcom/android/camera/PermissionsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 282
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 279
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 280
    .local v1, "list":[Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkMustPermissions()V
    .locals 3

    .prologue
    .line 392
    sget-object v1, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "checkMustPermissions"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    sget-object v1, Lcom/android/camera/PermissionsActivity;->PERMISSION_MUST_LIST:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/camera/util/PermissionUtil;->getUngrantedList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    .local v0, "lstUngranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V

    goto :goto_0
.end method

.method private checkPermissions()V
    .locals 3

    .prologue
    .line 245
    sget-object v1, Lcom/android/camera/PermissionsActivity;->PERMISSION_LIST:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/camera/util/PermissionUtil;->getUngrantedList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    .local v0, "lstRequestPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 248
    iget-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mSecureCamera:Z

    if-nez v1, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/camera/PermissionsActivity;->buildPermissionsRequest(Ljava/util/ArrayList;)V

    .line 260
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v1, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "request permission fail : Keyguard Locked"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsFailure()V

    goto :goto_0

    .line 257
    :cond_1
    sget-object v1, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "All permissions get"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    goto :goto_0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mUserAgreementDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mUserAgreementDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mUserAgreementDialog:Landroid/app/Dialog;

    .line 223
    :cond_0
    return-void
.end method

.method private handlePermissionsFailure()V
    .locals 3

    .prologue
    .line 359
    sget-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "handlePermissionsFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PermissionsActivity$8;

    invoke-direct {v1, p0}, Lcom/android/camera/PermissionsActivity$8;-><init>(Lcom/android/camera/PermissionsActivity;)V

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PermissionsActivity$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PermissionsActivity$7;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private handlePermissionsSuccess()V
    .locals 5

    .prologue
    .line 345
    sget-object v1, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "handlePermissionsSuccess"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->setLocationTag()V

    .line 347
    iget-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/PermissionsActivity;->setResult(I)V

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "request_permission"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->finish()V

    .line 356
    return-void

    .line 350
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setLocationTag()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 403
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 405
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 407
    const v1, 0x7f08012b

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private shouldShowUserAgreementDialog()Z
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedCheckNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showTipsDialog()V
    .locals 8

    .prologue
    .line 155
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mIsCheckDialogNotShow:Z

    .line 156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 157
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 159
    .local v0, "ask":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/camera/PermissionsActivity$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PermissionsActivity$2;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/camera/PermissionsActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/PermissionsActivity$3;-><init>(Lcom/android/camera/PermissionsActivity;Landroid/view/View;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method


# virtual methods
.method public checkSecureCameraIntent()V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mSecureCamera:Z

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v2, "secure_camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PermissionsActivity;->mSecureCamera:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 334
    sget-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 337
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkMustPermissions()V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x80000

    .line 113
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_capture_intent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    .line 115
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->checkSecureCameraIntent()V

    .line 117
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsCaptureIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/PermissionsActivity;->mIsCaptureIntent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSecureCamera="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/PermissionsActivity;->mSecureCamera:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    const v3, 0x7f040077

    invoke-virtual {p0, v3}, Lcom/android/camera/PermissionsActivity;->setContentView(I)V

    .line 121
    iget-object v3, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "pref_camera_recordlocation_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/camera/PermissionsActivity;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "pref_camera_recordlocation_key"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "filter_screen_off":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/PermissionsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/PermissionsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-boolean v3, p0, Lcom/android/camera/PermissionsActivity;->mSecureCamera:Z

    if-eqz v3, :cond_1

    .line 135
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "from secure lock screen, user starts secure camera"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "filter_user_unlock":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/PermissionsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/PermissionsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v1    # "filter_user_unlock":Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 141
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/camera/PermissionsActivity;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->shouldShowUserAgreementDialog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->showTipsDialog()V

    .line 152
    :goto_1
    return-void

    .line 144
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkPermissions()V

    goto :goto_1
.end method

.method protected onDestroyTasks()V
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDestroy: unregistering receivers"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/PermissionsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    return-void
.end method

.method protected onPauseTasks()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PermissionsActivity;->mPermissionFailDialog:Landroid/app/AlertDialog;

    .line 236
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 287
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPermissionsResult counts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    .line 289
    .local v0, "allAlwaysDenied":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_2

    .line 290
    aget v3, p3, v1

    if-nez v3, :cond_1

    .line 291
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRequestPermissionsResult granted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    :goto_1
    aget-object v3, p2, v1

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 297
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRequestPermissionsResult showed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_1
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRequestPermissionsResult denied "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_2
    sget-object v3, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRequestPermissionsResult allAlwaysDenied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    invoke-static {p0, p2}, Lcom/android/camera/util/PermissionUtil;->getUngrantedList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 303
    .local v2, "lstUngranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->handlePermissionsSuccess()V

    .line 330
    :goto_2
    return-void

    .line 306
    :cond_3
    if-eqz v0, :cond_4

    .line 307
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08012f

    .line 308
    invoke-virtual {p0, v4}, Lcom/android/camera/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08012e

    .line 309
    invoke-virtual {p0, v4}, Lcom/android/camera/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PermissionsActivity$6;

    invoke-direct {v5, p0}, Lcom/android/camera/PermissionsActivity$6;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080128

    .line 319
    invoke-virtual {p0, v4}, Lcom/android/camera/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/PermissionsActivity$5;

    invoke-direct {v5, p0}, Lcom/android/camera/PermissionsActivity$5;-><init>(Lcom/android/camera/PermissionsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_2

    .line 327
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PermissionsActivity;->checkMustPermissions()V

    goto :goto_2
.end method

.method protected onResumeTasks()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/android/camera/PermissionsActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    return-void
.end method
