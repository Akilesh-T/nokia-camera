.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualExpTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INT_1:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INT_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INT_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_125:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_15:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_250:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_30:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_500:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_60:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

.field public static final enum INVERSE_8:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;


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

    .line 482
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 483
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_500"

    const-string v2, "0.002"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_500:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 484
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_250"

    const-string v2, "0.004"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_250:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 485
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_125"

    const-string v2, "0.008"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_125:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 486
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_60"

    const-string v2, "0.0166"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_60:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 487
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_30"

    const/4 v2, 0x5

    const-string v3, "0.0333"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_30:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 488
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_15"

    const/4 v2, 0x6

    const-string v3, "0.0666"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_15:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 489
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_8"

    const/4 v2, 0x7

    const-string v3, "0.125"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_8:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 490
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_4"

    const/16 v2, 0x8

    const-string v3, "0.25"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 491
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INVERSE_2"

    const/16 v2, 0x9

    const-string v3, "0.5"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 492
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INT_1"

    const/16 v2, 0xa

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_1:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 493
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INT_2"

    const/16 v2, 0xb

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 494
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    const-string v1, "INT_4"

    const/16 v2, 0xc

    const-string v3, "4"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 481
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_500:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_250:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_125:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_60:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_30:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_15:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_8:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_1:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

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
    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 499
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->mSettingsString:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;
    .locals 3
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 509
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    .line 534
    :goto_0
    return-object v0

    .line 511
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_500:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_500:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 513
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_250:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_250:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 515
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_125:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_125:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 517
    :cond_3
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_60:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_60:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 519
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_30:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 520
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_30:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 521
    :cond_5
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_15:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 522
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_15:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 523
    :cond_6
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_8:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 524
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_8:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 525
    :cond_7
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 526
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto :goto_0

    .line 527
    :cond_8
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 528
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INVERSE_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto/16 :goto_0

    .line 529
    :cond_9
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_1:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_1:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto/16 :goto_0

    .line 531
    :cond_a
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 532
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_2:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto/16 :goto_0

    .line 533
    :cond_b
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 534
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->INT_4:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    goto/16 :goto_0

    .line 536
    :cond_c
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 481
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
