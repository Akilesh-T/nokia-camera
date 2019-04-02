.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurroundSound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

.field public static final enum FRONT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

.field public static final enum OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

.field public static final enum REAR:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

.field public static final enum SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;


# instance fields
.field private final mSettingsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 623
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    const-string v1, "OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    .line 624
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    const-string v1, "FRONT"

    const-string v2, "front"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->FRONT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    .line 625
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    const-string v1, "REAR"

    const-string v2, "rear"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->REAR:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    .line 626
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    const-string v1, "SURROUND"

    const-string v2, "surround"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    .line 622
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->FRONT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->REAR:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

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
    .line 630
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 631
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->mSettingsString:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;
    .locals 2
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 641
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    .line 648
    :goto_0
    return-object v0

    .line 643
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->FRONT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->FRONT:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    goto :goto_0

    .line 645
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->REAR:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->REAR:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    goto :goto_0

    .line 647
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->SURROUND:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    goto :goto_0

    .line 650
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid setting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 622
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
