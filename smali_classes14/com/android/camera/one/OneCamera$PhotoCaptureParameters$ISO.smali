.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_100:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_1600:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_3200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_400:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

.field public static final enum ISO_800:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;


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

    .line 544
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 545
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_100"

    const-string v2, "100"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_100:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 546
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_200"

    const-string v2, "200"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 547
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_400"

    const-string v2, "400"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_400:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 548
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_800"

    const-string v2, "800"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_800:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 549
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_1600"

    const/4 v2, 0x5

    const-string v3, "1600"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_1600:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 550
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    const-string v1, "ISO_3200"

    const/4 v2, 0x6

    const-string v3, "3200"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_3200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 543
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_100:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_400:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_800:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_1600:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_3200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

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
    .line 554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 555
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->mSettingsString:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;
    .locals 3
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 565
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    .line 578
    :goto_0
    return-object v0

    .line 567
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_100:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_100:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 569
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 571
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_400:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_400:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 573
    :cond_3
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_800:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_800:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 575
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_1600:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 576
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_1600:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 577
    :cond_5
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_3200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 578
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->ISO_3200:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    goto :goto_0

    .line 580
    :cond_6
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 543
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
