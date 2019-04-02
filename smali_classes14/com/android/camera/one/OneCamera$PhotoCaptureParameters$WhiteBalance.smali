.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhiteBalance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

.field public static final enum WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;


# instance fields
.field private final mSettingsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 406
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 407
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "CLOUDY_DAYLIGHT"

    const-string v2, "cloudy_daylight"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 408
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "DAYLIGHT"

    const-string v2, "daylight"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 409
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "FLUORESCENT"

    const-string v2, "fluorescent"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 410
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "INCANDESCENT"

    const-string v2, "incandescent"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 411
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "SHADE"

    const/4 v2, 0x5

    const-string v3, "shade"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 412
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "TWILIGHT"

    const/4 v2, 0x6

    const-string v3, "twilight"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 413
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "WARM_FLUORESCENT"

    const/4 v2, 0x7

    const-string v3, "warm_fluorescent"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 414
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    const-string v1, "MANUAL"

    const/16 v2, 0x8

    const-string v3, "manual"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 405
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "settingsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 419
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->mSettingsString:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public static decodeMetadata(Ljava/lang/String;)I
    .locals 3
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 454
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    .line 456
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, 0x6

    goto :goto_0

    .line 458
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    const/4 v0, 0x5

    goto :goto_0

    .line 460
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    const/4 v0, 0x3

    goto :goto_0

    .line 462
    :cond_3
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    const/4 v0, 0x2

    goto :goto_0

    .line 464
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    const/16 v0, 0x8

    goto :goto_0

    .line 466
    :cond_5
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 467
    const/4 v0, 0x7

    goto :goto_0

    .line 468
    :cond_6
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 469
    const/4 v0, 0x4

    goto :goto_0

    .line 470
    :cond_7
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 471
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid setting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;
    .locals 3
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    .line 446
    :goto_0
    return-object v0

    .line 431
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 433
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->DAYLIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 435
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 437
    :cond_3
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->INCANDESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 439
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->SHADE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 441
    :cond_5
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->TWILIGHT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 443
    :cond_6
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 445
    :cond_7
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 446
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    goto :goto_0

    .line 449
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid setting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
