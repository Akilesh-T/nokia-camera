.class public Lcom/android/camera/KeyguardCameraActivity;
.super Landroid/app/Activity;
.source "KeyguardCameraActivity.java"


# static fields
.field public static final CAMERA_CURRENT_URI:Ljava/lang/String; = "camera_current_uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/KeyguardCameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/KeyguardCameraActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/KeyguardCameraActivity;->startGallery()V

    return-void
.end method

.method private startGallery()V
    .locals 9

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 67
    .local v8, "galleryIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/camera/KeyguardCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "camera_current_uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 68
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    if-nez v8, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 72
    .local v1, "startGalleryIntent":Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/camera/KeyguardCameraActivity;->getBrightnessLevel()F

    move-result v6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/camera/util/GalleryHelper;->setContentUri(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;ZJFLjava/util/List;)V

    .line 75
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/camera/KeyguardCameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getBrightnessLevel()F
    .locals 7

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 80
    const/high16 v0, 0x437f0000    # 255.0f

    .line 81
    .local v0, "MAX_BRIGHTNESS":F
    const/4 v1, 0x0

    .line 82
    .local v1, "MIN_BRIGHTNESS":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 84
    .local v3, "brightnessLevel":F
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/KeyguardCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    .local v2, "brightness":I
    int-to-float v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_0

    .line 87
    int-to-float v4, v2

    div-float v3, v4, v6

    .line 91
    .end local v2    # "brightness":I
    :cond_0
    :goto_0
    return v3

    .line 89
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/camera/KeyguardCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 46
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    new-instance v1, Lcom/android/camera/KeyguardCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/android/camera/KeyguardCameraActivity$1;-><init>(Lcom/android/camera/KeyguardCameraActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 63
    return-void
.end method
