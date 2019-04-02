.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

.field public static final enum OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

.field public static final enum ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

.field public static final enum TORCH:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;


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

    .line 330
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    const-string v1, "OFF"

    const-string v2, "off"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    const-string v1, "ON"

    const-string v2, "on"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    const-string v1, "TORCH"

    const-string v2, "torch"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->TORCH:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .line 329
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->TORCH:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

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
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->mSettingsString:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    .locals 2
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .line 359
    :goto_0
    return-object v0

    .line 354
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    goto :goto_0

    .line 358
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->TORCH:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->TORCH:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    goto :goto_0

    .line 361
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid setting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
