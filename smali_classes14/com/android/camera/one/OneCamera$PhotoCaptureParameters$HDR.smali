.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HDR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

.field public static final enum OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

.field public static final enum ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;


# instance fields
.field private final mSettingsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 589
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    const-string v1, "OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    const-string v1, "ON"

    const-string v2, "on"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    .line 588
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

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
    .line 600
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 601
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->mSettingsString:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;
    .locals 2
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 611
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    .line 616
    :goto_0
    return-object v0

    .line 613
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    goto :goto_0

    .line 615
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    goto :goto_0

    .line 618
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid setting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 588
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
