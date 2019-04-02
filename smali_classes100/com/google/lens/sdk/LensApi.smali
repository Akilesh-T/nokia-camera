.class public Lcom/google/lens/sdk/LensApi;
.super Ljava/lang/Object;
.source "LensApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;,
        Lcom/google/lens/sdk/LensApi$LensFeature;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
    }
.end annotation


# static fields
.field static final LENS_BITMAP_URI_KEY:Ljava/lang/String; = "LensBitmapUriKey"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LENS_DEEPLINKING_STRING:Ljava/lang/String; = "googleapp://lens"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LENS_DEEPLINKING_URI:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LensApi"


# instance fields
.field private final context:Landroid/content/Context;

.field private final paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "googleapp://lens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/lens/sdk/LensApi;->LENS_DEEPLINKING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi;->context:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    .line 116
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/lens/sdk/LensApi;->mapInternalLensAvailabilityToExternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/lens/sdk/LensApi;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/lens/sdk/LensApi;->startLensActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private appendBitmapUri(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "bitmapUri"    # Landroid/net/Uri;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 265
    .end local p1    # "baseUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 266
    .restart local p1    # "baseUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "LensBitmapUriKey"

    .line 267
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method private static mapInternalLensAvailabilityToExternal(I)I
    .locals 3
    .param p0, "internalLensAvailabilityStatus"    # I
    .annotation build Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
    .end annotation

    .prologue
    .line 273
    packed-switch p0, :pswitch_data_0

    .line 282
    :pswitch_0
    const-string v0, "LensApi"

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Internal error code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 p0, 0x1

    .end local p0    # "internalLensAvailabilityStatus":I
    :pswitch_1
    return p0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private startLensActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "googleapp://lens"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method


# virtual methods
.method public checkArStickersAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    .line 258
    invoke-virtual {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->getArStickersAvailability()I

    move-result v0

    invoke-static {v0}, Lcom/google/lens/sdk/LensApi;->mapInternalLensAvailabilityToExternal(I)I

    move-result v0

    .line 257
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    .line 259
    return-void
.end method

.method public checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->context:Landroid/content/Context;

    const-string v2, "keyguard"

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 240
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 242
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    new-instance v2, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;

    invoke-direct {v2, p1}, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->getParams(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;)V

    goto :goto_0
.end method

.method public launchLensActivity(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    const-string v2, "keyguard"

    .line 136
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 137
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 139
    new-instance v0, Lcom/google/lens/sdk/LensApi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/lens/sdk/LensApi$1;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    .line 157
    .local v0, "keyguardDismissCallback":Landroid/app/KeyguardManager$KeyguardDismissCallback;
    invoke-virtual {v1, p1, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 165
    .end local v0    # "keyguardDismissCallback":Landroid/app/KeyguardManager$KeyguardDismissCallback;
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v2, "LensApi"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot start Lens when device is locked with Android "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/lens/sdk/LensApi;->startLensActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public launchLensActivity(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "feature"    # I
        .annotation build Lcom/google/lens/sdk/LensApi$LensFeature;
        .end annotation
    .end param

    .prologue
    .line 176
    packed-switch p2, :pswitch_data_0

    .line 190
    const-string v1, "LensApi"

    const/16 v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid lens activity: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->paramsReader:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->getArStickersAvailability()I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.ar.lens"

    const-string v2, "com.google.vr.apps.ornament.app.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public launchLensActivityWithBitmapUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmapUri"    # Landroid/net/Uri;

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    const-string v1, "LensApi"

    const-string v2, "Image URI is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    sget-object v1, Lcom/google/lens/sdk/LensApi;->LENS_DEEPLINKING_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/google/lens/sdk/LensApi;->appendBitmapUri(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
